json.array!(@organization_statuses) do |organization_status|
  json.extract! organization_status, :id, :name, :code
  json.url organization_status_url(organization_status, format: :json)
end
