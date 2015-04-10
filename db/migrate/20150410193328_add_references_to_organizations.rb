class AddReferencesToOrganizations < ActiveRecord::Migration
  def change
    add_reference :organizations, :organization_type, index: true
    add_foreign_key :organizations, :organization_types
    add_reference :organizations, :organization_status, index: true
    add_foreign_key :organizations, :organization_statuses
  end
end
