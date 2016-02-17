class CreateSubCompanies < ActiveRecord::Migration
  def change
    create_table :sub_companies do |t|
      t.integer :company_id
      t.integer :linked_in_id
      t.string :name
      t.string :universal_name
      t.string :ticker
      t.string :web_site_url
      t.string :logo_url
      t.string :square_logo_url
      t.string :employee_count_range
      t.string :description
      t.string :stock_exchange
      t.string :founded_year
      t.string :end_year
      t.integer :num_followers

      t.timestamps
    end
  end
end
