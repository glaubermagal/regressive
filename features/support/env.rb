# encoding: utf-8
require 'watir'
require 'rspec'

$browserName = ENV['BROWSER'].to_sym
browser = Watir::Browser.new $browserName
browser.driver.manage.window.maximize

Before do
  @browser = browser
end

at_exit do
  browser.quit
end