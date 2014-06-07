Feature: Check for About link
  In order to know about the developer
  As a visitor to the website
  I want to be able to access the About link

 Scenario: Check whether about link exists on the home page
   Given I am on the home page
   When I click on About link
   Then I should find text "Manmeet Singh Saluja"
 
 
 

  
