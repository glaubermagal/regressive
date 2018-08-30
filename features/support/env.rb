# encoding: utf-8
require 'watir'
require 'rspec'

# o default do watir é o chrome, caso você queira iniciar com outro tipo de browser é so passar após o .new :firefox
browser = Watir::Browser.new :firefox
browser.driver.manage.window.maximize

Before do
  # estamos setando o referencia do browser para uma variavel global chamada @browser
  @browser = browser
end

at_exit do
  browser.quit
end