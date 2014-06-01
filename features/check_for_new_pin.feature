Feature: Check for 'new pin' option link once logged in
	In order to create new pins
	As a logged in user
	I want to see the option of 'new pins' on the page
	
	Scenario: Checking for new pin option after sign-in
		Given I am a new authenticated user
		When I click on sign in on the home page
		And I fill up my details on the sign in page
		Then I should find link for "New Pin"
		