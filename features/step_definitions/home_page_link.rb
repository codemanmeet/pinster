When(/^I click on "(.*?)" in the navbar$/) do |arg1|
   click_link arg1	
end

Then(/^I should see a link to the root path with text "(.*?)"$/) do |text|
  page.should have_link(text, href: root_path)
end

When(/^I click on "(.*?)" on the home page$/) do |arg1|
  click_link arg1
end

