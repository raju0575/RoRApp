class RemoveDescriptionFromSubCompany < ActiveRecord::Migration
  def change
    remove_column :sub_companies, :description, :string
  end
end
