Feature:As a Existing User I want to see my Login details and Reset my new password

Scenario 1:I want See my profile
   Given I login with correct credentials
   When I click on Menu Button
   And I click on my name
   Then I should see my login details

Scenario 2: Reset my password
     Given I login with correct credentials
     When I click on Menu Button
     And I click on my name  
     And I should see my login details
     And I click on ret Button
     Then I should reset new password	 
   
   