require 'rubygems'
require 'rspec'
require 'selenium-webdriver'

include Selenium

#Creating WebDriver
Before do
  Selenium::WebDriver::Chrome::Service.driver_path="C:/Cucumber-Ruby/Test/features/support/chromedriver.exe"
  browser = Selenium::WebDriver.for :chrome
  @browser = browser
end
After do
  @browser.quit
end