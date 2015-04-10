class CreateOrganizationTypes < ActiveRecord::Migration
  def change
    create_table :organization_types do |t|
      t.string :name, :limit => 255
      t.string :code, :limit => 255

      t.timestamps
    end
  end
end
