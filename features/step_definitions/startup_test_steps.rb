#require 'rubygems'
#require 'selenium-webdriver'
driver1 = Selenium::WebDriver.for :chrome

Given "User navigates to provided url11" do


driver1.get "http://localhost/podemo/"

end

Then(/^he should see two links1$/) do
  driver1.find_element(:xpath, "//div[@id='inner']/div/a/img").click
  driver1.find_element(:link, "New Organization").click
  driver1.quit
  puts("This is a test that is purposely designed to pass")
end
# Test comment

