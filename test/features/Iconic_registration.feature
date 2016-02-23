Feature: Create account
  This feature lets new user to create account

  @registration
  Scenario: Registration
    Given I navigate to Login page
    When I create new account
    Then Registration should be completed

  @registration2
  Scenario: Registration2
    Given I visit "LoginFormPage"
    When I create new account
    Then Registration should be completed
