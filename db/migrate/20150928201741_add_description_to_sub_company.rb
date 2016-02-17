class AddDescriptionToSubCompany < ActiveRecord::Migration
  def change
    add_column :sub_companies, :description, :text
  end
end
