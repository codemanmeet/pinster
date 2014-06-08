Then(/^I should find text fields "(.*?)", "(.*?)", "(.*?)" and "(.*?)"$/) do |name, email, password, password_confirmation|
  page.should have_field(email)
  find_field("#{email}").value.should == EMPTY
  page.should have_field(password)
  find_field("#{password}").value.should == EMPTY
  page.should have_field(name)
  find_field("#{name}").value.should == EMPTY
  page.should have_field(password_confirmation)
  find_field("#{password_confirmation}").value.should == EMPTY
end

