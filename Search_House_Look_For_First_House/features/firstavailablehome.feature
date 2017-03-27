Feature:As anonymous user
I'd like to view the home details for the first home available in "København V" (sunday.dk/sogning -> sunday.dk/bolig/<home_id>)
So I can look at a picture of the home and how it fits into my budget


Scenario:Proceed to Sunday.dk and search house and see available house in budget
         Given I proceed to sunday.dk
         And I give my preferance for location in search option and click on search button
         When I see the list of available houses
         And I click on first available house
         Then I should see picture of the house and should see budget