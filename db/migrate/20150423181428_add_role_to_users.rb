class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, :limit => 255
  end
end
