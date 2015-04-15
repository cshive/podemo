json.extract! @organization, :id, :name, :identifier, :organization_type_id, :organization_status_id, :address1, :created_at, :updated_at
json.orgTypes OrganizationType.order(:name) do |organizationType|
  json.extract! organizationType, :id, :name
end
json.orgStatuses OrganizationStatus.order(:name) do |organizationStatus|
  json.extract! organizationStatus, :id, :name
end