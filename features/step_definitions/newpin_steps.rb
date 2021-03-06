
Given(/^I am a new authenticated user$/) do
	@user = create_user #method defined in factories.rb
end

When(/^I click on sign in on the home page$/) do
  visit root_path
  click_link 'Sign in'
end

When(/^I fill up my details on the sign in page$/) do
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button('Sign in')
end

Then(/^I should find link for "(.*?)"$/) do |text|
  page.save_screenshot('successful_sign_in.png', :selector => 'div.container')	
  page.should have_selector(:link_or_button, text)
end
