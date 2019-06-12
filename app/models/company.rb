class Company < ApplicationRecord
    has_many :company_yearly_data
    has_many :company_monthly_data
    validates :isin, uniqueness: true
    
    include PgSearch
    pg_search_scope :search, against: [:name, :isin, :cusip, :country]
    
    scope :country, lambda { |query| where(["country LIKE ?", query]) }
    scope :sector, lambda { |query| where(["sector LIKE ?", query]) }
    scope :companyname, lambda { |query| where(["name LIKE ?", query]) }
    scope :sector_average, lambda { |query| Company.joins("INNER JOIN company_yearly_data ON company_yearly_data.company_id = companies.id WHERE companies.sector = '#{query}'").distinct(:company_id).average(:carbon_beta) }
    scope :country_average, lambda { |query| Company.joins("INNER JOIN company_yearly_data ON company_yearly_data.company_id = companies.id WHERE companies.country = '#{query}'").distinct(:company_id).average(:carbon_beta) }
    scope :international_average, lambda { Company.joins("INNER JOIN company_yearly_data ON company_yearly_data.company_id = companies.id").distinct(:company_id).average(:carbon_beta) }
    
end
