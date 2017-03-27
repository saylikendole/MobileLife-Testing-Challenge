Feature: As an existing user
I'd like to be to login to my existing account from sunday.dk
So I can continue where I left off, if I use a new computer

Scenario:Proceed to sunday.dk and Login
          Given I proceed to sunday.dk
		  And I logged in with correct credentials
		  And I search for house
          And I logout
          And I logged in with correct credentials
		  Then I should be on same page where I left before
