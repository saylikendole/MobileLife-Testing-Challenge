Feature:As a Existing User I want to see information on  'How sunday.dk site works', 'Boligord oversat til dansk' and 'List of Frequently asked questions'.

Scenario1: See information on How sunday.dk site works
    Given I login with correct credentials
    When I click on Menu Button
	And I click on Hjælpecenter Button
	And I click on sådan fungerer Sunday
	Then I should able to read the features of the site
	
Scenario 2 : See information on Boligord oversat til dansk
    Given I login with correct credentials
    When I click on Menu Button
	And I click on Hjælpecenter Button
	And I click on Boligord oversat til dansk
	Then I should able to read a list of Boligord oversat til dansk
	
scenario 3: See information on List of Frequently asked questions
    Given I login with correct credentials
    When I click on Menu Button
	And I click on Hjælpecenter Button
	And I click on the question which I want to get answered
	Then I should see the answer for my question  