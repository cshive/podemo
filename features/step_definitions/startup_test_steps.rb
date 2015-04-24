Given /^User navigates to provided url$/ do
require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get "http://localhost:3000"
# driver = Selenium::WebDriver.for :firefox
# driver.get "http://localhost:3000"
# driver = Selenium::WebDriver.for :safari
# driver.get "http://localhost:3000"

end
