class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :isin
      t.string :cusip
      t.string :name
      t.string :country
      t.string :sector

      t.timestamps
    end
    add_index(:companies, :isin)
    add_index(:companies, :cusip)
    add_index(:companies, :name)
  end
end
