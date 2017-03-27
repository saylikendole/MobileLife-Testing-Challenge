Feature:
As a anonymous user
I'd like to search for homes at sunday.dk/sogning
So I can look for homes without storing my economy data

Scenario: proceed to Sunday.dk and search house
         Given I proceed to sunday.dk
         And I give my preferance for location in search option and click on search button
         Then I should see the list of available houses