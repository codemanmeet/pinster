Given(/^I am on the home page$/) do
  visit root_path
end

When(/^I click on About link$/) do
  click_link "About"
end

Then(/^I should find text "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
end