class PublicController < ApplicationController
  
  layout 'home'

  def home
    @companies = Company.all.count
  end

  def contact    
  end

end
