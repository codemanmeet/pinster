Given(/^I am a new signed in user with pins$/) do
  @user = create_user 
  @pin1 = create(:pin, :image => fixture_file_upload("shahrukhkhan-jan30.jpg",'image/jpg'), :user => @user, :description => "Badshah of Bollywood")
  @pin2 = create(:pin, :image => fixture_file_upload("manmeet_pic.jpg",'image/jpg'), :user => @user, :description => "Manmeet Singh")
  visit root_path
  click_link 'Sign in'
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button('Sign in')
end

When(/^I change the name of the pic to "(.*?)"$/) do |arg1|
  fill_in "Description", :with => arg1
  click_button "Update Pin"
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
end

