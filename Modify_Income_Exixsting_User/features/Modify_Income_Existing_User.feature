Feature:As an existing user with an economic profile
I'd like to modify my income (indtaegt) in my economic profile at sunday.dk/profile
So that my I receive a new budget calculation that is more accurate

Scenario:Modify Income for new budget
         Given I proceed to sunday.dk
         And I logged in with correct credentials
         And I click on Min profil button
         And I modify old income to new income
         Then My new budget should be calculated

		 
		 