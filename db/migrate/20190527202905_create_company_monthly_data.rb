class CreateCompanyMonthlyData < ActiveRecord::Migration[5.2]
  def change
    create_table :company_monthly_data do |t|
      t.references :company, foreign_key: true
      t.date :month
      t.float :return

      t.timestamps
    end
  end
end
