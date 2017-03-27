require "watir-webdriver"
require "colorize"


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
		$income_afterTax="16000"


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

#Method to search house from Sunday.dk

def search_house
   @browser.text_field(:id,"locations-autosuggest").click
   @browser.text_field(:id,"locations-autosuggest").set($houselocation)
   @browser.button(:id,"headerSearchButton").click
   sleep 2.9
  end
  
 	
#At end of all scenario's, close browser

at_exit do 
	browser.close
end
