json.state_list @state_list do |key, value|
  json.code key
  json.name value['name']
end