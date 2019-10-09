@Negative_FunctionalTeamTask_SaveButton
Feature: Submit the task assigned to Functional Team-Treasury 

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$treasuryUser$$$"
  
   Scenario: Accept he task assigned to Functional Team and then Submit the task
  
   Given I open "$$$URL_ClientService$$$"
   Given I wait for "2" seconds
   
   #Add filter set based on Initiated Request
   Given I click on link "Add"
   Given I populate field "Filter Set Name" with "NewFil8"
   Given I populate field "Type" with "$$$RequestType$$$"
   Given I wait for "5" seconds
   Given I click on link "Today[2]"
   Given I wait for "5" seconds
   Given I click on link "Save"
   
   #Navigate to Tasks and click on Functional Team Task
   Given I click on button "MY GROUP TASKS"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
   #Accept the task and Navigate between the tabs available in task and click on links available under Emails
   Given I click on button "ACCEPT"
   Given I wait for "4" seconds
   
   #Check for the details provided by CSA user while initiating request and provide the comments to complete the task
   Given I toggle box "Requestor & Request Information" visibility
   Given I toggle box "Client Information" visibility
   Given I wait for "4" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with "[2]"
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC2.pdf"
   When I wait for "7" seconds
   
   #Check for the Save button Functionality
   Then I click on button "SAVE"
   Then I wait for "5" seconds
   Then I populate field "Select Filter Set(s)" with "NewFil8"
   Then I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   When I verify text "Check this random comments to fail the test case" is present
   Then I wait for "5" seconds
   Then I click on button "COMPLETE"
   Then I click on button "YES"
   Then I wait for "5" seconds
   Then I logout
   Then I tear down
   
            

