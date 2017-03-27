Given(/^I proceed to sunday.dk$/)do
    @browser.goto "https://sunday.dk"
end

And(/^I give my preferance for location in search option and click on search button$/)do
    search_house
end

When(/^I see the list of available houses$/)do
      if @browser.text.include?($houselocation)
	puts " List of available houses"
	end
	sleep 2.9
end

And(/^I click on first available house$/)do
        @browser.images[1].click 
		puts "I can see picture of house"
		sleep 2.0
end

Then(/^I should see picture of the house and should see budget$/)do
        
		if (@browser.text.include? "Passer min økonomi?")
		    puts "I can proceed to see if it fits into my budget"
		else 
		    puts "something is wrong"
        end
end