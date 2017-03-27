 require "watir-webdriver"
require "colorize"
require "cucumber"
require "watir-scroll"


case ENV['BROWSER'] # Default browser is Chrome. By using 'set BROWSER=ff' inside console you can switch to Firefox.

when 'ff'	# FIREFOX

	browser = Watir::Browser.new :firefox
	
else	# CHROME
 
chromedriver_path = File.join(File.absolute_path('../', File.dirname(__FILE__)),"browsers","chromedriver.exe")
Selenium::WebDriver::Chrome.driver_path = chromedriver_path

prefs = {
  :download => {
    :prompt_for_download => false    
  },
  :safebrowsing => {
    :enabled => true    
  },
  :incognito => {
    :mode_availability => 2    
  }
}
	browser = Watir::Browser.new :chrome, :prefs => prefs, :switches => %w[ --disable-extensions ]
  
end

# Global Variables
		$main_url= "https://sunday.dk"

		$login_email= "autotester@test.com"
		$login_password= "Test123!"
		$houselocation="København V"
		$income_afterTax= "11.000"

# Open only 1 browser for all scenario's in the feature
Before do 	
	@browser = browser
end

# CREDENTIALS
def login_credentials_and_login
    @browser.button(:id,"topBarLogin").click
	@browser.text_field(:placeholder,"Email").set($login_email)
    @browser.text_field(:placeholder,"Adgangskode").set($login_password)
	sleep 0.2
	@browser.button(:text,"Log ind").click
	
end

#Method to search house on sunday.dk
def search_house
   @browser.text_field(:id,"locations-autosuggest").click
   @browser.text_field(:id,"locations-autosuggest").set($houselocation)
   @browser.button(:id,"headerSearchButton").click
  end
  
#Method to Modify Income on sunday.dk
 def modify_income
    sleep 2.0
    @browser.scroll.to :center
	sleep 1.9
	$old_budget=@browser.div(:class,"_2nphsvtjtGYWVcbWnLBAJl _1S93tc-kW0gUSSaYp58-8T VjPpUJKinzP13FqB73rF _1PIKLiYfKi-Dk0Zw9rJ239").text
	
	@browser.button(:text,"Tilpas budget").click
	sleep 1.9
	@browser.scroll.to [0, 1100]
	@browser.div(:id,"9e0ea156-9679-4088-ad3f-a101d50de8ea").click
	sleep 1.9
	@browser.input(:class,"container _3LRDsSH9iWnu2L20UMUja2 _3DqIQQj_WFZfebulX2SerN _148UpmXi1ZIh7KykDkaHQe _1DPA_189krMwlw4zwWUFD3 _3ylPgGkqSkjOycLfPmVCvr _3cOVHEnS_CSDfUhFoRGMeG").value.clear
	sleep 2.0
	@browser.text_field(:class,"container _3LRDsSH9iWnu2L20UMUja2 _3DqIQQj_WFZfebulX2SerN _148UpmXi1ZIh7KykDkaHQe _1DPA_189krMwlw4zwWUFD3 _3ylPgGkqSkjOycLfPmVCvr _3cOVHEnS_CSDfUhFoRGMeG").set($income_afterTax)
	@browser.scroll.to [0, 2800]
	sleep 1.9
	@browser.button(:text,"Fortsæt").click
	sleep 0.4
	$new_budget=@browser.div(:class,"_2nphsvtjtGYWVcbWnLBAJl _1S93tc-kW0gUSSaYp58-8T VjPpUJKinzP13FqB73rF _1PIKLiYfKi-Dk0Zw9rJ239").text
	
end	
	
#At end of all scenario's, close browser
at_exit do 
	browser.close
end

