require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers/chromedriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
   # config.default_wait_time = 20
    config.default_max_wait_time = 30
    config.app_host = 'https://ferguson.com'
end

email = 'akratz@mcfadyen.com'
password ='Admin1976'
