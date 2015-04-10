class RemoveReferencesFromOrganizations < ActiveRecord::Migration
  def change
    remove_reference :organizations, :organization_type, index: true
    remove_reference :organizations, :organization_status, index: true
  end
end
