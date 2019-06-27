# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'date'

CSV.foreach(Rails.root.join('lib', 'seeds', 'int_firms.csv'), headers: true) do |row|        
         
    t = Company.new              
    t.isin = row['isin']
    t.cusip = row['cusip']
    t.name = row['name']
    t.country = row['businesscountry']
    t.sector = row['sector']    
    t.save            
        
end

puts "There are now #{Company.count} rows in the company table"


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

CSV.foreach(Rails.root.join('lib', 'seeds', 'int_firms.csv'), headers: true) do |row|     

    year = row['year'].to_i
    date = Date.new(year,1,1)
    company = Company.where(:isin => row['isin'])

    next if CompanyYearlyDatum.exists?(:company_id => company[0].id, :year => date)

    t = CompanyYearlyDatum.new    
    t.company_id = company[0].id
    t.year = date    
    t.carbon_beta = row['bmg_yearly']
    t.se_carbon_beta = row['bmg_se_yearly']          
    t.save          
        
end

   
   