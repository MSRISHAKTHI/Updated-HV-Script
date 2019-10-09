@9.7d_DeleteAllExistingTeams
Feature: Delete the existing added teams and Add New Teams  

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
And I set appian version to "19.2"
And I set appian locale to "en_US"
Then I login with username "csaUser1"
  
   Scenario: Using Manage Team Related Action, Delete the existing added teams and Add New Teams 
  
  Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "4" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Manage Teams"
    Given I wait for "5" seconds
    
  #Remove the existing team and add additional teams
    Given I click on grid "[1]" column "[6]" row "[1]"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[6]" row "[1]"
    Given I wait for "4" seconds
    Given I click on button "COMPLETE" 
    Given I wait for "4" seconds
    And I click on button "Yes"
    Given I wait for "5" seconds
    
     #Navigate to Fulfillment details additional dashboard and verify
  Given I click on link "Fulfillment Details"
  Given I wait for "6" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Compliance"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "10/04/2019"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "Retracted"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I wait for "6" seconds
  Given I verify grid "[2]" column "[8]" row "[1]" contains "Retracted"
 Given I wait for "6" seconds
  Given I click on link "Close"
  Given I wait for "6" seconds
 Given I verify grid "[1]" column "[1]" row "[2]" contains "Tax"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[2]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[2]" contains "10/04/2019"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[2]" contains "Retracted"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[2]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I wait for "6" seconds
  Given I verify grid "[2]" column "[8]" row "[1]" contains "Retracted"
 Given I wait for "6" seconds
 Given I click on link "Close"
  Given I wait for "6" seconds
  
 #Navigate to Audit history additional dashboard and verify
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Manage Functional Teams"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "Request Fulfillment"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "The task has been retracted since the functional team was retracted"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[3]" contains "Request Fulfillment"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[3]" contains "The task has been retracted since the functional team was retracted"
Given I wait for "4" seconds

 #Verify the Status of Request in Client Service Records
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Request Owner Response"
Given I wait for "5" seconds
Then I logout
Then I tear down
 

