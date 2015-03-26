class AddAddress1ToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :address1, :string
  end
end
