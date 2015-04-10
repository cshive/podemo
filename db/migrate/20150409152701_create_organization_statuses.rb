class CreateOrganizationStatuses < ActiveRecord::Migration
  def change
    create_table :organization_statuses do |t|
      t.string :name, :limit => 255
      t.string :code, :limit => 255

      t.timestamps
    end
  end
end
