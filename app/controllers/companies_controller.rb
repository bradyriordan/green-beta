class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  layout 'single_company'
  before_action :authenticate_user!

  # GET /companies
  # GET /companies.json
  def index
    if params[:search]
      @companies = Company.search(params[:search]).paginate(page: params[:page], per_page: 15) 
      @company_data = CompanyYearlyDatum.most_recent(@company.id)    
    elsif params[:term]
      @companies = Company.search(params[:term]).limit(10)
      @company_data = CompanyYearlyDatum.most_recent(@company.id) 
      render json: @companies.map(&:name)    
    else
      @companies = Company.all.paginate(page: params[:page], per_page: 15).order(:name)
      @company_data = CompanyYearlyDatum.most_recent(@company.id)
    end
    @contact = Contact.new
  end
 
  # GET /companies/1
  # GET /companies/1.json
  def show
    @company = Company.find(params[:id])
    @company_data = CompanyYearlyDatum.most_recent(@company.id)
    @sector_average = Company.sector_average(@company.sector).to_f
    @country_average = Company.country_average(@company.country).to_f
    @international_average = Company.international_average.to_f
    @contact = Contact.new
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:isin, :cusip, :name, :country, :sector, :search, :term)
    end
end
