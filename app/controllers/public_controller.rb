class PublicController < ApplicationController
  
  layout 'home'

  def home
    @companies = Company.count
    @contact = Contact.new
  end

  def contact    
  end

end
