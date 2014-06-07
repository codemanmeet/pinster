Feature: Check whether the sign in link works
  In order sign in
  As a new visitor to the app
  I want to go to the sign in page through Navbar

  Scenario: Check for fields Email ID and password
    Given I am on the home page
    When I click on "Sign in"
    Then I should find textfields "Email" and "Password"
  
  
  

  
