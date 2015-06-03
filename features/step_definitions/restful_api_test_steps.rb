Given "User navigates to provided restful url" do

#driver = Selenium::WebDriver.for :firefox
#driver.get "http://localhost:3000"
  get("http://localhost:3000/podemo/organizations.json")

end

Then "he should see some json response" do
  JSON.parse(last_response.body).should == JSON.parse("980190962")
end
# Test comment