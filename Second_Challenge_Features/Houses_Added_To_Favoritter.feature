Feature: As a Existing User I want to See list of houses Previously added to favoritter 

Scenario:See houses from favoritter
     Given I login with correct credentials
     When I click on Menu Button
	 And I click on favoritter Button
	 Then I should see previously added houses to favoritter 