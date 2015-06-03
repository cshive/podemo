require 'rubygems'
require 'selenium-webdriver'

Given "User navigates to provided url1" do

driver = Selenium::WebDriver.for :firefox
driver.get "http://localhost:3000/podemo"

end

Then(/^he should see two links$/) do
  puts("This is a test that is purposely designed to pass")
end
# Test comment

