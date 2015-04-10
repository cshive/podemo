class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string, :limit => 255
    add_column :users, :uid, :string, :limit => 255
  end
end
