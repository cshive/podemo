json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :identifier
  json.url organization_url(organization, format: :json)
end
