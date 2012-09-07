Feature: Create description for send messages
	In order to send messages
	As an guest 
	I want to be able to fill in name, email, description fields

	Background: 
		Given I am stay on homepage

	Scenario: Fill in empty fields
		When I press contact us
			Then I should see the new contact page

		When I fill in name
		And I fill in email
		And I fill in description
		And I press send
			Then I should see the flash notice