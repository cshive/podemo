#require 'rubygems'
#require 'selenium-webdriver'

Given "User navigates to provided url11" do

driver1 = Selenium::WebDriver.for :firefox
driver1.get "http://localhost/podemo/angular/#/main/welcome"

end

Then(/^he should see two links1$/) do
  puts("This is a test that is purposely designed to pass")
end
# Test comment

