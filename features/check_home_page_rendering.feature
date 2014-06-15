Feature: Home page partial rendering when the user is signed in
  In order to view the pins appropriately as a signed user
  As a new authenticated user
  I want to see only the pins and not the welcome message to sign in

  Scenario: The user is signed in and does not see the home page partial rendered
    Given I am a new authenticated user
	When I click on sign in on the home page
	And I fill up my details on the sign in page
    Then "Sign up" and "Welcome to Pinterest" from the home page partial should not be rendered
  
  
  

  
