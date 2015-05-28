json.extract! @organization, :id, :name, :identifier, :organization_type_id, :organization_status_id, :address1, :address2, :city, :state, :zip_code, :country, :ctep_id, :created_at, :updated_at
json.orgTypes OrganizationType.order(:name) do |organizationType|
  json.extract! organizationType, :id, :name
end
json.orgStatuses OrganizationStatus.order(:name) do |organizationStatus|
  json.extract! organizationStatus, :id, :name
end
json.countries Country.all do |country|
  json.code country[1]
  json.name country[0]
end
if Country.find_country_by_name(@organization.country)
  json.states Country.find_country_by_name(@organization.country).states do |key, value|
    json.code key
    json.name value['name']
  end
end
