json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :identifier, :organization_type, :organization_status
  json.url organization_url(organization, format: :json)
end
