Feature: Check for image presence in pin
  In order to experience the pin feature on Pinster
  As a website visitor
  I want to see pin images

  Scenario: Check for presence of pin 15 image on clicking
    Given I am on the home page
    When I click on Manmeet's pic
    And I see the link for Back
    Then I should see 'Pinster' on the home page
  
  
  

  
