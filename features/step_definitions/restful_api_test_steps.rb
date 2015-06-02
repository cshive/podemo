require 'rubygems'
require 'selenium-webdriver'
#require 'rack-test'
require 'capybara'
#require 'poltergeist'

Given "User navigates to provided url" do

#driver = Selenium::WebDriver.for :firefox
#driver.get "http://localhost:3000"
  get("http://localhost:3000/podemo/angular/orgdetails.html#?id=980190962")

end

Then "he should see some json response" do
  JSON.parse(last_response.body).should == JSON.parse(json)
end
# Test comment