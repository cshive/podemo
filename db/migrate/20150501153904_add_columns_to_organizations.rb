class AddColumnsToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :address2, :string, :limit => 255
    add_column :organizations, :city, :string, :limit => 255
    add_column :organizations, :state, :string, :limit => 255
    add_column :organizations, :zip_code, :integer
    add_column :organizations, :country, :string, :limit => 255
    add_column :organizations, :ctep_id, :string, :limit => 255
  end
end
