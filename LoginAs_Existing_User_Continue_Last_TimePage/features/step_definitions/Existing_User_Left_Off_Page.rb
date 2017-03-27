Given (/^I proceed to sunday.dk$/)do
       @browser.goto "https://sunday.dk"
end

And (/^I logged in with correct credentials$/)do
    login_credentials_and_login
	sleep 0.2
end

And (/^I search for house$/)do
    search_house 
    sleep 0.9	
end

And(/^I logout$/)do
    logout
end

#Given (/^I proceed to sunday.dk$/)do
 #      @browser.goto "https://sunday.dk"
#end


Then (/^I should be on same page where I left before$/)do
      if (@browser.url==$Last_url)
	  puts "success"
	  else
	  puts "Failed"
end
end



        
     