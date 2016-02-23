Feature: Login
  This feature lets registered user to login

  @login
  Scenario: Login successful
    Given I navigate to Home page
    When I login successfully
    Then I should be logged in


  @login_error
  Scenario: Login with wrong username
    Given I navigate to Home page
    When I login unsuccessfully
    Then I should see error message

  @test
  Scenario: Login successful2
    Given I visit "HomePage"

  @test
  Scenario: Login successful3
    Given I "login" on "HomePage"