class CreateCompanyYearlyData < ActiveRecord::Migration[5.2]
  def change
    create_table :company_yearly_data do |t|
      t.references :company, foreign_key: true
      t.date :year
      t.float :return_after_carbon_beta
      t.float :se_return_after_carbon_beta
      t.float :carbon_beta
      t.float :se_carbon_beta
      t.timestamps
    end
  end
end
