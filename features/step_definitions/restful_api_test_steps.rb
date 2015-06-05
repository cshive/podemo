require "active_support/inflector"
Given "User navigates to provided restful url" do

#driver = Selenium::WebDriver.for :firefox
#driver.get "http://localhost:3000"
  #puts('Using Curl')
  #my_string_for_curl_command = "curl http://localhost:3000/podemo/organizations/980190962.json"
  #puts('Our test will now hit a URL that will in turn talk to retful service')
  #get("http://localhost:3000/podemo/organizations/980190962.json")
  #exec(my_string_for_curl_command)
  puts('Using rest-client')

  my_rest_response = RestClient.get 'http://localhost:3000/podemo/organizations/980190962.json'
  puts (my_rest_response.code)
  puts (my_rest_response.to_s)



end

Then "he should see some json response" do
  #expect(MultiJson.load(last_response.body)).to eq(MultiJson.load(json))
  #data = MultiJson.load(last_response.body)
  #puts(data)
  #puts('I this line is executed it means I got some response
#next paragraph')

end
# Test comment