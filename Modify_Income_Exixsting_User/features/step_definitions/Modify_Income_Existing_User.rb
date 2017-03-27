Given (/^I proceed to sunday.dk$/)do
       @browser.goto "https://sunday.dk"
end

When (/^I logged in with correct credentials$/)do
    login_credentials_and_login
end

And (/^I click on Min profil button$/)do
      @browser.button(:id,"topBarProfile").click
	  sleep 2.9
	end

And (/^I modify old income to new income$/)do	
      modify_income
end

Then (/^My new budget should be calculated$/)do
      if !($old_budget==$new_budget)
	  puts $old_budget
	  puts $new_budget
	  puts "New Budget is calculated"
	  else
	  puts "No change in Income and Budget"
	 
	 end
end