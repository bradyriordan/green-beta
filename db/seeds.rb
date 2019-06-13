# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'date'

# monthlydata = []
# columns = [:isin, :cusip, :name, :country, :sector]
# CSV.foreach(Rails.root.join('lib', 'seeds', 'na_firms.csv'), headers: true) do |row|  
#     companies << {isin: row['isin'], cusip: row['cusip'], name: row['name'], country: row['businesscountry'], sector: row['sector']}  
# end
# Company.import columns, companies, validate: true, validate_uniqueness: true


#     csv_text = File.read(Rails.root.join('lib', 'seeds', 'na_firms.csv'))
#     csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
#     csv.each do |row|
        
#         next if Company.exists?(:isin => row['isin'])    
#         t = Company.new              
#             t.isin = row['isin']
#             t.cusip = row['cusip']
#             t.name = row['name']
#             t.country = row['businesscountry']
#             t.sector = row['sector']    
#             t.save
#             puts "company #{t.name} saved"
        
#     end

#    puts "There are now #{Company.count} rows in the company table"


#     csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
#     csv.each do |row|
        
#             company = Company.where(:isin => row['isin'])
#             d = Date.parse(row['month'])
#             t = CompanyMonthlyDatum.new    
#             t.company_id = company[0].id
#             t.month = d
#             t.return = row['excess_return']             
#             t.save
#             puts "company monthly data #{t.month} saved"            
        
#     end

#    puts "There are now #{CompanyMonthlyDatum.count} rows in the company monthly data table"

CSV.foreach(Rails.root.join('lib', 'seeds', 'na_firms.csv'), headers: true) do |row|     

        year = row['year'].to_i
        date = Date.new(year,1,1)
        company = Company.where(:isin => row['isin'])

        next if CompanyYearlyDatum.exists?(:company_id => company[0].id, :year => date)

        t = CompanyYearlyDatum.new    
        t.company_id = company[0].id
        t.year = date
        t.return_after_carbon_beta = row['bmg_cons']
        t.se_return_after_carbon_beta = row['bmg_se_cons']
        t.carbon_beta = row['bmg_yearly']
        t.se_carbon_beta = row['bmg_se_yearly']          
        t.save          
        
    end

   
   