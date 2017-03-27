# Project Title
Mobilelife Testing Challenge
## Getting Started
Install necessary software as mentioned in ‘Prerequisites’. Read ‘Running the tests’ section to understand how to run the test scripts.
## Language used for Test Script
   Ruby
## Prerequisites
You need to install the below listed software to run the test:

•	Ruby

•	Cucumber

•	Ansicon(Optional: To get colored output)
## Installing
A step by step instruction to install Ruby and Cucumber:

Steps:

Step 1 − Install Ruby.

•	Go to RubyInstaller download page(https://rubyinstaller.org/downloads/).

•	Download the version best suited for your operating system (i.e. 32 or 64 bit)

•	Run the downloaded exe.

•	During the installation, tick the option “Add Ruby…” and “Associate …”.

Step 2 − Download and extract Dev kit.

•	Go to RubyInstaller download page.

•	Download the Devkit version best suited for your operating system (i.e. 32 or 64 bit).

•	Extract the devkit at c:\Ruby\Devkit folder.

•	Open the command prompt.

•	Inside the Ruby devkit, run the following command

C:\Ruby\devkit> ruby dk.rb init 

C:\Ruby\devkit> ruby dk.rb install

Step 3 − Install Cucumber and other Ruby gem.

•	To install Cucumber, first update the current gem setup  so run following command

  C:\Users\Admin> gem update
  
•	Next, install the gems you need for Cucumber web testing.

   C:\Users\Admin> gem install --no-ri --no-rdoc rspec
   
   C:\Users\Admin> gem install --no-ri --no-rdoc win32console 
   
   C:\Users\Admin> gem install --no-ri --no-rdoc watir-webdriver 
   
   C:\Users\Admin> gem install --no-ri --no-rdoc cucumber
   
•	Run Cucumber

  C:\Users\Admin\Documents>cucumber –init      
  
  C:\Users\Admin\Documents>cucumber
  
Step 4 − Install Watir − Go to command prompt and run the following command

               "gem install watir"		
               
Step 5 − Install rspec − Go to command prompt and run the following command 

                "gem install rspec"			
                
Step 6 − Install colorize − Go to command prompt and run the following command

            "gem install colorize"
            
Steps to install Ansicon:

To show colorized text in cmd prompt you have to install Ansicon tool. You can download

Installation Steps:

Step 1. Download and unzip the file from https://github.com/adoxa/ansicon/downloads

Step 2. open cmd and navigate to the unzipped folder

Step 3. Navigate to x64 (if you have a 64 bit machine) otherwise navigate to x86

Step 4. Type ansicon.exe -h and you will get the following:

                     D:\Data\ansicon\x86>ansicon.exe –h
                     
                     ANSICON Version 1.32 (22 December, 2010).  Freeware.
                     
                     http://ansicon.adoxa.cjb.net/
                     
	                   by Jason Hood .
                     
## Running the tests
Steps to run the test:

Step 1. Download the “Test” folder


Step 2.To run the test scenario for example
:
           “ LoginAs_Existing_User_Continue_Last_TimePage”
           
       Open command prompt and change folder as shown:
       
          cd  Path to the folder
          
Example: 

cd  C:\Users\Desktop\Downloads\test\LoginAs_Existing_User_Continue_Last_TimePage

step 3. Write the following command

            Cucumber -v
 

 
