When(/^I click on Manmeet's pic$/) do
  @pin = create(:pin)
  @pin2 = create(:pin, :image => fixture_file_upload("shraddha-kapoor_2.jpg",'image/jpg'), :user => @pin.user)
  sleep(10)
  visit root_path
  click_link 'Manmeet pic'
  sleep(10)
end

When(/^I see the link for Back$/) do
  click_link 'Back'
end

Then(/^I should see 'Pinster' on the home page$/) do
  page.should have_selector(:link_or_button, 'Pinster')
end

