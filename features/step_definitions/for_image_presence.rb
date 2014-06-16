When(/^I click on Manmeet's pic$/) do
  @pin = create(:pin)
  @pin2 = create(:pin, :image => fixture_file_upload("shahrukhkhan-jan30.jpg",'image/jpg'), :user => @pin.user, :description => "Shahrukh Khan")
  visit root_path
  click_link 'Manmeet pic'
end

When(/^I see the link for Back$/) do
  click_link 'Back'
end

Then(/^I should see 'Pinster' on the home page$/) do
  page.should have_selector(:link_or_button, 'Pinster')
end

