@9.7c_ManageTeams-AddNewTeamsWhen_thereisnofunctionalteamadded
Feature: Add New Functional Teams using Manage Teams Related Action

  Background: Login to Appian environment
   Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"
  
   Scenario: Using Manage Teams Related Action, Add Functional Teams
  
     Given I open "$$$CSUrl$$$"
    Given I wait for "10" seconds
    Given I click on site page "$$$Records$$$"
    Given I wait for "10" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "8" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "8" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "8" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "20" seconds
    Given I click on record related action "Manage Teams"
    Given I wait for "10" seconds
    Given I click on link "Add Functional Team"
    Given I wait for "8" seconds
    
    #Below will select Treasury Team
    Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam1$$$"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam1$$$"
    Given I wait for "5" seconds
   Given I populate grid "[1]" column "[3]" row "[1]" with "$$$Duedate$$$"
   Given I wait for "5" seconds
    Given I populate grid "[1]" column "[4]" row "[1]" with "$$$FTComments$$$"    
    Given I wait for "5" seconds
    
    #I verify the functionality of all the buttons   
    When I verify button "$$$Cancel$$$" is present
	  When I wait for "3" seconds
	  When I click on button "$$$Complete$$$"
	  Then I wait for "5" seconds
	  And I click on button "$$$confButtonYes$$$"
 	  And I wait for "10" seconds
    Then I click on link "Fulfillment Details"
	  Then I wait for "5" seconds
	  Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$"
	  Given I wait for "5" seconds
	  Given I verify grid "[1]" column "[11]" row "[1]" contains "$$$FStatus1$$$"
	  Given I wait for "5" seconds
	  Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$Duedate$$$"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$FTComments$$$"
    Given I wait for "5" seconds
    
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
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[2]" row "[1]" contains "$$$FunctionalTeam1$$$"
    Given I wait for "3" seconds
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
   Given I wait for "8" seconds
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "8" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "8" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "$$$InitialAssignmantFT1$$$"
   Given I wait for "8" seconds
 
  #Navigate to Audit history additional dashboard and verify
 Given I click on link "Audit History"
 Given I wait for "8" seconds
 Given I sort grid "[1]" by column "Received On"
Given I wait for "8" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "8" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
Given I wait for "8" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$ManageFTeams$$$"
Then I logout
Then I tear down