@1.8IRWithReqTypeInvestorAndSave
Feature: Initiate the request, save it and verify it in the records
Background: Login to LH Test environment
Given I setup with "CHROME" browser
When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
And I set appian version to "19.2"
And I set appian locale to "en_US"
Then I login with username "csaUser1"

Scenario: Initiate Request with Requestor Type as Investor and Save
  #I open Provide Request Information form and Initiate a request
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I click on link "Initiate Request" 
    Given I wait for "8" seconds 
    
    #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "[2]" with "Good to go" 
    Given I wait for "5" seconds
    Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
    Given I wait for "10" seconds  
   
    #I Fill the details in the Request Information section
    #Given I click on radio option "High"
    #Given I wait for "5" seconds
    Given I click on checkbox option "[1]" 
    Given I wait for "5" seconds
    Given I populate field "Issue Description" with "Issue Description"
    Given I wait for "5" seconds
    Given I click on link "Click here to search for Requestor Institution" 
    Given I wait for "5" seconds
    Given I populate picker field "Name" with partially matching suggestions for "Investor" 
    Given I wait for "5" seconds
    Given I click on grid "Search Result(s)" column "Name" row "[1]"
    Given I wait for "5" seconds
    Then I click on button "Yes"
    And I wait for "5" seconds
    Given I populate field "Request Type(s)" with "Compliance"
    And I wait for "5" seconds
    Given I populate field "Description" with "Description" 
    Given I wait for "5" seconds    
    
    #I Fill the details in the Client Information section
    Given I populate field "Fund(S)" with "[1]"  
    
    #I verify the functionality of all the buttons
    And I click on button "SAVE"
    And I wait for "8" seconds
    
    #Pick up the same task from the task page and observe
    Given I click on site page "TASKS"
     Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "4" seconds
    Given I verify field "Priority" contains "High"
 Given I wait for "5" seconds
  Given I verify field "Request Type(s)" contains "Compliance"
   Given I wait for "5" seconds
 Given I verify field "Description" contains "Description"
    Given I click on button "SAVE"
    Given I wait for "5" seconds

    #I verify the status in the Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
   Given I clear field "Select Filter Set(s)"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "Open"
    Given I wait for "5" seconds
    
    #Navigate to summary dashboard and verify the details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 When I click on link "Summary"
 Given I wait for "5" seconds
Given I verify field "Priority" contains "High"
 Given I wait for "5" seconds
  Given I verify field "Request Type(s)" contains "Compliance"
   Given I wait for "5" seconds
 Given I verify field "Description" contains "Description"
 Given I wait for "5" seconds
  Given I verify field "Client Name" contains "Vida Security (Larrain Vial Investor)"
  Given I wait for "5" seconds
 Then I logout
    Then I tear down

