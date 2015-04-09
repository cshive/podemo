class AddOrganizationStatusRefToOrganizations < ActiveRecord::Migration
  def change
    add_reference :organizations, :organization_status, index: true
  end
end
