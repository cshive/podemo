class AddAddress1ToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :address1, :string, :limit => 255
  end
end
