Given(/^I navigate to Home page$/) do
   visit_page HomePage
end

When(/^I click "([^"]*)" on "([^"]*)"$/) do |element, onpage|
  on_page onpage do |page|
    page.element
  end
end

When(/^I login unsuccessfully$/) do
  on_page HomePage do |page|
    page.login
  end
  on_page LoginFormPage do |page|
    page.email = "test@test.com"
    page.password = "password"
    page.submit
  end
end

When(/^I login successfully$/) do
  on_page HomePage do |page|
    page.login
  end
  on_page LoginFormPage do |page|
    page.email = "j1856286@trbvm.com"
    page.password = "j1856286"
    page.submit
  end

end

Then(/^I should be logged in$/) do
  on_page HomePage do |page|
  raise TestCaseFailed, ("Unexpected user name: #{page.user}") unless page.user == "JT"
  end
end

Then(/^I should see error message$/) do
  on_page LoginFormPage do |page|
    page.incorrect
  end
end

Given(/^I navigate to Login page$/) do
  visit_page LoginFormPage
end

When(/^I create new account$/) do

  on_page LoginFormPage do |page|
    page.new
  end
  on_page RegistrationFormPage do |page|
    page.first_name = Faker::Name.first_name
    page.last_name = Faker::Name.last_name
    page.gender = ["Male", "Female"].sample

    page.email = Faker::Internet.email
    page.password = Faker::Internet.password

    page.submit

  end
end

Then(/^Registration should be completed$/) do
  on_page HomePage do |page|
    page.registration_completed
  end
end

### parameter |page| is a name of the PageObject Class
Given(/^I visit "([^"]*)"$/) do |page|
  visit_page page
end

Given(/^I "([^"]*)" on "([^"]*)"$/) do |method, page|
  #require 'active_support/inflector'
  puts page
  puts method
 # page.constantize.send(method)
  #page1 = page.constantize
 # page1 = Object.const_get(page)

 # on_page page do |page|
 #   page.login
 # end

end