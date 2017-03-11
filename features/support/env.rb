require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :chrome
    config.app_host = 'https://ninjabank.herokuapp.com'
end
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :Selenium
Capybara.default_max_wait_time = 5