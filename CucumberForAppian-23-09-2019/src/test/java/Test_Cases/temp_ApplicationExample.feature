@Request_Initiation
Feature: Sample feature file that interacts with an Appian application

  Configuring your site with the sample application:
  1. Import the applicable version of Automated Testing - XX.X.zip application, provided in the Shared Components page, into your Appian environment
  2. Log into Appian Designer view on your Appian environment and import the downloaded application zip
  3. After import is complete, click on the Automated Testing application
  4. Find and click on the AUT DS object to open the Appian Data Store Designer
  5. Verify the entity mappings under Schema Management and then Save & Publish the data store

  Prerequisites for running the test on the configured site above:
  1. Run the appropriate setupCustomPropertiesFor... script
  2. Replace BROWSER with either FIREFOX or CHROME
  3. Replace APPIAN_URL with your Appian site URL, beginning with https:// and including /suite at the end (e.g. https://forum.appian.com/suite)
  4. Replace APPIAN_VERSION with (17.4, 18.1, 18.2, 18.3, 18.4, 19.1, 19.2 or 19.3)
  5. Replace APPIAN_LOCALE with either "en_US" or "en_GB"
  5. Replace APPIAN_USERNAME with a valid username for Appian URL above
  6. Open src/main/resources/configs/users.properties and add a line for the above username that is of the form username=password (e.g. test.user=password)

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "http://harbourvesttest.appiancloud.com/suite/?signin=native"
    And I set appian version to "18.4"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"

Scenario: A- Initiate a request without recurring and Functional team information
  #I open Provide Request Information form and Initiate a request
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    When I click on site page "TASKS"  
    Given I click on link "Initiate Request" 
    Given I wait for "8" seconds 
    #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "[2]" with "Good to go" 
    Given I wait for "5" seconds
    Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\00 PCC Minutes Apr 26, 2019 D1.pdf"
    Given I wait for "8" seconds  
    #I Fill the details in the Request Information section
    Given I click on radio option "High"
    Given I click on checkbox option "[1]" 
    Given I populate field "Issue Description" with "Issue"
    Given I wait for "3" seconds
    Given I click on link "Click here to search for Requestor Institution" 
    Given I populate picker field "Name" with partially matching suggestions for "Investor" 
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Then I click on button "Yes"
    And I wait for "5" seconds
    Given I populate field "Request Type(s)" with 
    |Amendments & Extensions|
    |Compliance|
    Given I populate field "Description" with "Comments" 
    Given I wait for "5" seconds    
    #I Fill the details in the Client Information section
    Given I populate field "Fund(s)" with "[1]"  
    #I verify the functionality of all the buttons
    And I click on button "Close Request"
    And I click on button "Yes"
    And I wait for "10" seconds
    
Scenario: B- Initiate a request with recurring information and the functional team information    
     #I open Provide Request Information form and Initiate a request  
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I wait for "10" seconds
    When I click on site page "TASKS" 
    Given I click on link "Initiate Request" 
    Given I wait for "8" seconds    
    #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "[2]" with "Good to go" 
    Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\00 PCC Minutes Apr 26, 2019 D1.pdf"   
    #I Fill the details in the Recurring Information section
    #Given I click on checkbox option "[3]"
    #Given I click on radio option "Weekly"
    #Given I click on checkbox option "Sunday"
    #Given I populate field type "INTEGER" named "[3]" with "2"
    #Given I wait for "3" seconds
    #Given I populate field "[8]" with "day(s)"
    #Given I populate field type "TEXT" named "[4]" with "3"
    #Given I click on radio option "[10]"
    #Given I populate field type "TEXT" named "[5]" with "4"  
    #I Fill the details in the Request Information section
    Given I click on radio option "High"
    Given I click on checkbox option "[1]" 
    Given I populate field "Issue Description" with "Issue"
    Given I wait for "3" seconds
    Given I click on link "Click here to search for Requestor Institution" 
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "3" seconds
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Then I click on button "Yes"
    And I wait for "5" seconds
    Given I populate field "Request Type(s)" with 
    |Amendments & Extensions|
    |Compliance|
    Given I populate field "Description" with "Comments" 
    Given I wait for "10" seconds  
    #I Fill the details in the Client Information section
    Given I click on link "Click here to search for Client Institution"
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "3" seconds
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Given I wait for "3" seconds
    Given I click on link "Search Investor(s) for RJA - Atlanta - 1100 Abernathy Rd NE" 
    Given I wait for "5" seconds
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "5" seconds
    Given I select grid "Search Result(s)" row "[2]"
    Given I click on link "Add Selected Investor(s)"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[3]" row "[1]" with "[2]"   
    #I Fill the details in the Functional Team section
    Given I click on checkbox option "[2]" 
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "Legal"
    Given I wait for "3" seconds
    Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "Legal"
    Given I wait for "3" seconds
    Given I populate grid "[1]" column "[4]" row "[1]" with partially matching picker field suggestions for "Test"    
    #I verify the functionality of all the buttons
    And I click on button "Submit"
    And I click on button "Yes"
    And I wait for "10" seconds
    
Scenario: C- Functional team is Accounting  
     #I open Provide Request Information form and Initiate a request  
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I wait for "10" seconds
    When I click on site page "TASKS" 
    Given I click on link "Initiate Request" 
    Given I wait for "8" seconds    
    #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "[2]" with "Good to go" 
    Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\00 PCC Minutes Apr 26, 2019 D1.pdf"   
    #I Fill the details in the Recurring Information section
    #Given I click on checkbox option "[3]"
    #Given I click on checkbox option "Sunday"
    #Given I populate field type "INTEGER" named "[3]" with "2"
    #Given I wait for "3" seconds
    #Given I populate field "[8]" with "day(s)"
    #Given I populate field type "TEXT" named "[4]" with "3"
    #Given I click on radio option "[10]"
    #Given I populate field type "TEXT" named "[5]" with "4"    
    #I Fill the details in the Request Information section
    Given I click on radio option "High"
    Given I click on checkbox option "[1]" 
    Given I populate field "Issue Description" with "Issue"
    Given I wait for "3" seconds
    Given I click on link "Click here to search for Requestor Institution" 
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "3" seconds
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Then I click on button "Yes"
    And I wait for "5" seconds
    Given I populate field "Request Type(s)" with 
    |Amendments & Extensions|
    |Compliance|
    Given I populate field "Description" with "Comments" 
    Given I wait for "10" seconds   
    #I Fill the details in the Client Information section
    Given I click on link "Click here to search for Client Institution"
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "3" seconds
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Given I wait for "3" seconds
    Given I click on link "Search Investor(s) for RJA - Atlanta - 1100 Abernathy Rd NE" 
    Given I wait for "5" seconds
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "5" seconds
    Given I select grid "Search Result(s)" row "[2]"
    Given I click on link "Add Selected Investor(s)"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[3]" row "[1]" with "[2]"    
    #I Fill the details in the Functional Team section
    Given I click on checkbox option "[2]" 
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "Accounting"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "Accounting"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[4]" row "[1]" with partially matching picker field suggestions for "Test"    
    #I verify the functionality of all the buttons
    And I click on button "Submit"
    And I click on button "Yes"
    And I wait for "10" second
    
     Scenario: D- Cancel Request 
     #I open Provide Request Information form and Initiate a request  
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I wait for "10" seconds
    When I click on site page "TASKS" 
    Given I click on link "Initiate Request" 
    Given I wait for "8" seconds   
    #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "[2]" with "Good to go" 
    Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\00 PCC Minutes Apr 26, 2019 D1.pdf"
    Given I wait for "4" seconds
    #I verify the functionality of all the buttons
    And I click on button "CANCEL REQUEST"
    And I click on button "Yes"
    And I wait for "5" seconds
    

