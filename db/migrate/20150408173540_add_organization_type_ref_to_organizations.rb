class AddOrganizationTypeRefToOrganizations < ActiveRecord::Migration
  def change
    add_reference :organizations, :organization_type, index: true
  end
end
