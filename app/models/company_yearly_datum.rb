class CompanyYearlyDatum < ApplicationRecord
  belongs_to :company  
  validates_uniqueness_of :year, :scope => [:company_id]  
  
  scope :companycountry, lambda { |query| CompanyYearlyDatum.joins(:company).merge(Company.country( query ) ) }
  scope :companyname, lambda { |query| CompanyYearlyDatum.joins(:company).merge(Company.companyname( query ) ) }  
  scope :most_recent, lambda { |query| CompanyYearlyDatum.where(:company_id => query).order("year DESC").first }
end
