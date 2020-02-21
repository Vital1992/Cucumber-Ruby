require 'rubygems'
require 'rspec'
require 'selenium-webdriver'

include Selenium

#Creating WebDriver
Selenium::WebDriver::Chrome::Service.driver_path="/Users/vitaly.cherkasov/RubymineProjects/Test/features/support/chromedriver"
browser = Selenium::WebDriver.for :chrome

Before do
  @browser = browser
end