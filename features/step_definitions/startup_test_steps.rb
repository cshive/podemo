Given /^User navigates to provided url$/ do
require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://localhost:3000"

end

Then(/^he should see two links$/) do
  puts("This is a test that is purposely designed to pass")
end
# Test comment