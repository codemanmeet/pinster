Then(/^"(.*?)" and "(.*?)" from the home page partial should not be rendered$/) do |arg1, arg2|
  page.should have_no_content(arg1)
  page.should have_no_content(arg2)
end
