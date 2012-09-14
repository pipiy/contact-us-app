When /^users sent a message from the contact us page$/ do
  steps %Q{
  	Given I am on the home page
  	When I press the contact us button
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
  email.body.should include('Jack')
  email.body.should include('example@gmail.com')
  email.body.should include('Test description for sent messages')
  email.subject.should == "Contact us"
  email.to.should include("artem.slabodnik@gmail.com")
end