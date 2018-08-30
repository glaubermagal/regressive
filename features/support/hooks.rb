# coding: utf-8
require 'json'

After do |scenario|
  @browser.cookies.clear rescue warn 'No session to clear'
  puts "The scenario was finished at: #{DateTime.now}"
end