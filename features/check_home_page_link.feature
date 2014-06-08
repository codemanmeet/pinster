Feature: Check home page links on navbar
  In order to go to the home page
  As a user of the web app
  I want to be able to access the home page through the link on navbar

  Scenario: Check home page links on navbar
    Given I am on the home page
    When I click on "Home" in the navbar
    Then I should see a link to the root path with text "Home"
    When I click on "Pinster" on the home page
    Then I should see a link to the root path with text "Pinster"
  
  
  

  
