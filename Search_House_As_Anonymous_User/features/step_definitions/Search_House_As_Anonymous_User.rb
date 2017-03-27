Given(/^I proceed to sunday.dk$/)do
    @browser.goto "https://sunday.dk"
end

And(/^I give my preferance for location in search option and click on search button$/)do
    search_house
end

Then(/^I should see the list of available houses$/)do
   sleep 2.3
   if (@browser.text.include? $houselocation)
	      puts " List of available houses"
	else
	      puts "something is wrong"
	end
   #browser.div(:id => "mainContent").wait_until_present
  #assert_it ('Verfied Search Results') { @browser.text.include? "$houselocation"}
  
end
   #if (@browser.text(:text == $houselocation).exists?)
   
	

