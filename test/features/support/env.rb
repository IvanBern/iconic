require 'selenium-webdriver'
require 'cucumber'
require 'page-object'
require 'faker'

# Load Page Objects
World PageObject::PageFactory
require_relative('../../../page_objects/pageobjects_lib')