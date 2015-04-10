class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, :limit => 255
      t.string :identifier, :limit => 255

      t.timestamps
    end
  end
end
