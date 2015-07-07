require 'rubygems'
#require 'selenium-webdriver'

my_driver = Selenium::WebDriver.for :firefox

Given(/^User navigates to provided web url1$/) do

  my_driver.get "http://localhost:3000/podemo"
end

Then(/^he should see login$/) do
  my_driver.find_element(:xpath, "//div[@id='inner']/div/a/img").click
  my_driver.find_element(:id, "user_username").send_keys "tester01"
  my_driver.find_element(:id, "user_password").send_keys "Welcome01"
  my_driver.find_element(:name, "commit").click
  sleep(10)
  my_driver.find_element(:link, "Sign out").click
end







