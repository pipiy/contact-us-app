When /^users sent a message from the contact us page$/ do
  steps %Q{
  	Given I am on the contact us page
  	And I fill in name
	And I fill in email
	And I fill in description
	And I press the send button
  }
end

When /^I click on contact us button$/ do
  click_on('Contact Us')
end


Then /^the message should include the user details and a message$/ do
  pending # express the regexp above with the code you wish you had
end
