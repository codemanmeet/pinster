
EMPTY = ''
When(/^I click on "(.*?)"$/) do |sign_in_link|
  click_link sign_in_link
end

Then(/^I should find textfields "(.*?)" and "(.*?)"$/) do |email, password|
  page.should have_field(email)
  find_field("#{email}").value.should == EMPTY
  page.should have_field(password)
  find_field("#{password}").value.should == EMPTY
end