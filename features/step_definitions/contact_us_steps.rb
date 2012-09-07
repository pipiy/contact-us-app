Given /^I am stay on homepage$/ do
  visit('/')
end

When /^I press contact us$/ do
  click_on('Contact')
end

Then /^I should see the new contact page$/ do
  page.should have_content('Contact us')
end

When /^I fill in name$/ do
  fill_in('Name', :with => 'Jack')
end

When /^I fill in email$/ do
  fill_in('Email', :with => 'example.example@gmail.com')
end

When /^I fill in description$/ do
  fill_in('Description', :with => 'Test description')
end

When /^I press send$/ do
  click_on('Send')
end

Then /^I should see the flash notice$/ do
  page.should have_content('Message was sent successfully')
end
