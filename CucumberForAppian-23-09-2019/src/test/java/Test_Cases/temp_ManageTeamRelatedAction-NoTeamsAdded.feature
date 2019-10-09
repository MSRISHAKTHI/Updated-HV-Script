@ManageTeams-AddNewTeamsWhen_thereisnofunctionalteamadded
Feature: Add New Functional Teams using Manage Teams Related Action

  Background: Login to Appian environment
   Given I setup with "$$$Browser$$$" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$csaUser1$$$"
  
   Scenario: Using Manage Teams Related Action, Add Functional Teams
  
   Given I open "$$$URL_ClientService$$$"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    #Given I populate field "Search" with "8642"
    #Given I wait for "2" seconds
     Given I clear field "Status"
    Given I wait for "5" seconds
     Given I populate field "Type" with "$$$RequestType$$$"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Manage Teams"
    Given I wait for "2" seconds
    
    #Below will select Treasury Team
    Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "Compliance"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[2]" row "[2]" with partially matching picker field suggestions for "Compliance"
    Given I wait for "5" seconds
   Given I populate grid "[1]" column "[3]" row "[2]" with "09/28/2019"
   Given I wait for "5" seconds
    Given I populate grid "[1]" column "[4]" row "[2]" with "Test"    
    Given I wait for "5" seconds
    
    #I verify the functionality of all the buttons   
    When I verify button "CANCEL" is present
	  When I wait for "3" seconds
	  When I click on button "COMPLETE"
	   Then I wait for "5" seconds
	  And I click on button "Yes"
 	  And I wait for "10" seconds
    Then I click on link "Fulfillment Details"
	  Then I wait for "5" seconds
	  
    #Check the added teams updated in Request Fulfillment Details grid under Request Fulfillment Dashbaord
   
    Given I toggle box "Request Fulfillment Details" visibility
    Given I wait for "2" seconds
    Given I toggle box "Request Fulfillment Details" visibility
    Given I wait for "2" seconds
    Given I sort grid "[1]" by column "Functional Team"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Recommended Person"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Comments"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Assigned By"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Due Date"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Request Owner"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Task Owner"
    Given I wait for "3" seconds
    Given I sort grid "[1]" by column "Status"
    Given I wait for "3" seconds
    
    #Click to view review history
    Given I click on grid "[1]" column "[12]" row "[1]"
    Given I wait for "3" seconds
    Given I toggle box "[2]" visibility
    Given I wait for "3" seconds
    Given I toggle box "[2]" visibility
     Given I sort grid "[2]" by column "Task Name"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Initial Assignment"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Currently Assigned To"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Owner Assigned On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Completed By"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Completed On"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Status"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Comments"
    Given I wait for "3" seconds
    Then I click on link "Close"
      Given I wait for "6" seconds
      
    #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
  Given I click on link "ACtive Tasks"
   Given I wait for "4" seconds
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "GCS Compliance"
   Given I wait for "4" seconds
 
  #Navigate to Audit history additional dashboard and verify
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Request Fulfillment"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[3]" contains "Manage Functional Teams"
Then I logout
    Then I tear down

