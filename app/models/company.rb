class Company < ApplicationRecord
    has_many :company_yearly_data
    has_many :company_monthly_data
    validates :isin, uniqueness: true
    
    include PgSearch
    pg_search_scope :search, against: [:name, :isin, :cusip, :country]
    
    scope :country, lambda { |query| where(["country LIKE ?", query]) }
    scope :sector, lambda { |query| where(["sector LIKE ?", query]) }
    scope :companyname, lambda { |query| where(["name LIKE ?", query]) }
    
end
