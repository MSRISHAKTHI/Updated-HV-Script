@9.2cReopenAndSaveRequest
Feature: Reopen and Save the request
Background: Login to LH Test environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$CsaUser$$$"

 Scenario: Reopen the request and IR with Functionalteam and SAve
    #I open Provide Request Information form and Initiate a request
    Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds

#I navigate to Reopen request related action
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "10" seconds
Given I click on link "Related Actions"
Given I wait for "10" seconds
Given I click on link "Reopen Request"
Given I wait for "40" seconds

#I edit the Request details
Given I clear field "Request Due Date"
Given I populate field "Request Due Date" with "$$$Duedate$$$"
Given I click on radio option "$$$Priority1$$$"
#Given I click on checkbox option "[1]"
Given I clear field "Issue Description"
Given I populate field "Issue Description" with "$$$IssueDescription1$$$"
Given I wait for "5" seconds
Given I clear field "Request Type(s)" 
Given I wait for "8" seconds
Given I populate field "Request Type(s)" with "$$$RequestType(s)1$$$"
Given I wait for "8" seconds
Given I clear field "Description" 
Given I populate field "Description" with "$$$Description1$$$" 
Given I wait for "5" seconds  
#Given I clear field "Comments"
Given I populate field type "PARAGRAPH" named "[2]" with "$$$Comments1$$$" 
Given I wait for "5" seconds

#I edit the Client Information
Given I click on link "Click here to search for Client Institution"
Given I populate picker field "Name" with partially matching suggestions for "$$$Name1$$$"
Given I wait for "3" seconds
Given I click on grid "Search Result(s)" column "Name" row "[1]"
Given I wait for "5" seconds
Given I click on link "$$$SearchInvestorLink1$$$" 
Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInvName1$$$"
Given I wait for "5" seconds
Given I select grid "Search Result(s)" row "[2]"
Given I click on link "$$$AddInvestor$$$"
Given I wait for "5" seconds
Given I populate grid "[1]" column "[3]" row "[1]" with "[2]" 
Given I wait for "5" seconds

#I verify Request fulfillment details grid
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$" 
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "$$$FStatus7$$$" 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$AssignTaskOwner$$$"
 Given I wait for "5" seconds 
 Given I verify grid "[3]" column "[8]" row "[1]" contains "Canceled"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "5" seconds
Given I toggle box "Request Fulfillment Details" visibility
 Given I wait for "10" seconds

#Edit Functional teams and Save
Given I click on checkbox option "[2]"
 Given I wait for "10" seconds
Given I populate grid "[2]" column "[1]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam1$$$"
 Given I wait for "5" seconds
Given I populate grid "[2]" column "[2]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam1$$$"
Given I wait for "5" seconds   
Given I populate grid "[2]" column "[3]" row "[1]" with partially matching picker field suggestions for "$$$Duedate$$$"
 Given I wait for "5" seconds
Given I populate grid "[2]" column "[4]" row "[1]" with partially matching picker field suggestions for "$$$FTComments$$$"
Given I wait for "4" seconds
Given I click on link "Add Functional Team"
Given I populate grid "[2]" column "[1]" row "[2]" with partially matching picker field suggestions for "$$$FunctionalTeam2$$$"
 Given I wait for "5" seconds
Given I populate grid "[2]" column "[2]" row "[2]" with partially matching picker field suggestions for "$$$FunctionalTeam2$$$"
Given I wait for "5" seconds   
Given I populate grid "[2]" column "[3]" row "[2]" with partially matching picker field suggestions for "$$$Duedate$$$"
 Given I wait for "5" seconds
Given I populate grid "[2]" column "[4]" row "[2]" with partially matching picker field suggestions for "$$$FTComments$$$"
Given I wait for "4" seconds
Given I toggle box "Request Fulfillment Details" visibility
 Given I wait for "5" seconds
 
 #I Fill the details in the Recurring Information section
    Given I click on checkbox option "[3]"
    And I wait for "5" seconds
    Given I click on radio option "Weekly"
     And I wait for "5" seconds
    Given I click on checkbox option "Monday"
    Given I populate field type "TEXT" named "Lead Time" with "$$$LeadTime$$$"
    Given I wait for "5" seconds
    Given I populate field "Duration" with "$$$Duration$$$"
     Given I wait for "8" seconds
Given I click on button "$$$Save$$$"
Then I wait for "8" seconds

#Verify the Status of Request in Client Service Records
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status1$$$"
Given I wait for "5" seconds
Given I click on grid "[1]" column "[3]" row "[1}"
Given I wait for "4" seconds
  
  #Navigate to summary dashboard and verify the Request details and functional team details
 When I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority1$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)1$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description1$$$"
 Given I wait for "5" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$" 
 Given I wait for "8" seconds
 
   #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
 Given I click on link "Active Tasks"
Given I wait for "10" seconds  
  Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$InitiateRequest$$$"
  Given I wait for "3" seconds
  Given I verify grid "[1]" column "[4]" row "[1]" contains "$$$CsaGroup$$$"
  Given I wait for "5" seconds
  Given I logout
  Given I tear down