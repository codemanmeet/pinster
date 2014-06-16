Feature: As a Pinster user, I want to be able to edit the attributes of the pin
  In order to edit the attributes of the pin
  As an authenticated user
  I want to be able to change the name of the pin

Scenario: As a Pinster user, I want to edit the attributes of my pic
    Given I am a new signed in user with pins
    When I click on "Manmeet pic"
    And I click on "Edit"
    And I change the name of the pic to "I changed the name of the pic"
    Then I should see "I changed the name of the pic"
    And I should see "Pin was successfully updated."
  
  
    
