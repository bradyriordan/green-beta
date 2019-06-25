class PublicController < ApplicationController
  
  layout 'home'

  def home    
    @contact = Contact.new
    @company = Rails.cache.fetch( "term", :expires_in => 1.day){ Company.offset(rand(Company.count)).first }    
    @company_data = CompanyYearlyDatum.most_recent(@company.id)
  end

  def contact    
  end

end
