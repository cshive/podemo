Given /^User navigates to provided url$/ do
require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get "http://localhost:3000"
<<<<<<< HEAD

=======
>>>>>>> fd6eff34b309971590ae36a108171ffdd3c03c2b

end

Then(/^he should see two links$/) do
  puts("This is a test that is purposely designed to pass")
end