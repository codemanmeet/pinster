Feature: Check whether login and Sign up links work after HAML conversion
  In order for me to login and Sign up
  As a new user of the web app
  I want to be able to access the links for login and sign up

Scenario: Check accessibility of Login and Sign up links
  Given I am on the home page
  When I click on "Login"
  Then I should find textfields "Email" and "Password"
  When I click on "Sign up"
  Then I should find text fields "Name", "Email", "Password" and "Password confirmation"



  
