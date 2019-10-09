@8.2ResponseEmailThread-UpdateExistingRequest
Feature: Response Email Thread task-UpdateExistingRequest

Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"

Scenario: Response Email Thread task-UpdateExistingRequest
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds
Given I click on site page "$$$Records$$$"
Given I wait for "8" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "8" seconds
#Given I populate field "Search" with "$$$RequestID$$$"
#Given I wait for "8" seconds
     
  #Click on the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#I navigate to Email thread dashboard, select Initiate new request option and confirm it
Given I click on link "Active Tasks"
Given I wait for "8" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$Review&TakeActiononResponseEmailThread$$$"
Given I wait for "8" seconds
Given I click on grid "[1]" column "[1]" row "[1]"
Given I wait for "6" seconds
Given I select grid "[1]" row "[1]"
Given I wait for "5" seconds

#Check the selected radio option "Update Existing Request"
Given I wait for "6" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$CommentsValue$$$" 
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
Given I wait for "8" seconds    
Given I click on button "$$$CONFIRM$$$"
Given I click on button "$$$confButtonYes$$$"

#I Update the Request Information
Given I wait for "8" seconds
Given I click on checkbox option "[1]"
Given I click on checkbox option "[2]"
Given I click on checkbox option "[3]"
Given I click on checkbox option "[4]"
Given I wait for "5" seconds
Given I clear field "Request Due Date"
Given I populate field "Request Due Date" with "$$$Duedate1$$$"
Given I click on radio option "$$$Priority$$$"
Given I click on checkbox option "[1]"
Given I clear field "Issue Description"
Given I populate field "Issue Description" with "$$$IssueDescription1$$$"
Given I wait for "3" seconds
Given I clear field "Description" 
Given I populate field "Description" with "$$$Description1$$$" 
Given I wait for "5" seconds  
Given I clear field "Request Owner"
Given I populate picker field "Request Owner" with partially matching suggestions for "$$$RqOwner$$$"
Given I clear field "Request Type(s)"
Given I populate field "Request Type(s)" with "$$$RequestType(s)1$$$"
Given I clear field "Comments"
Given I populate field "Comments" with "$$$Comments1$$$" 
Given I wait for "5" seconds
Given I populate field "Request Status" with "[1]"
Given I wait for "8" seconds

#I edit the Client Information
Given I click on link "Click here to search for Client Institution"
Given I populate picker field "Name" with partially matching suggestions for "sec"
Given I wait for "3" seconds
Given I click on grid "Search Result(s)" column "Name" row "[1]"
Given I wait for "5" seconds
Given I click on link "Search Investor(s) for Woori Investment & Securities" 
Given I populate picker field "Name" with partially matching suggestions for "aber"
Given I wait for "5" seconds
Given I select grid "Search Result(s)" row "[2]"
Given I click on link "Add Selected Investor(s)"
Given I wait for "5" seconds
Given I populate grid "[2]" column "[3]" row "[1]" with "[2]" 
Given I wait for "8" seconds

#Edit Functional teams
Given I click on grid "[3]" column "[6]" row "[1]"
Given I wait for "4" seconds
Given I click on link "Add Functional Team"
Given I wait for "4" seconds
Given I populate grid "[3]" column "[1]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam1$$$"
Given I wait for "4" seconds
Given I populate grid "[3]" column "[2]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam1$$$"
Given I wait for "5" seconds   
Given I populate grid "[3]" column "[3]" row "[1]" with partially matching picker field suggestions for "$$$Duedate$$$"
Given I wait for "4" seconds
Given I populate grid "[3]" column "[4]" row "[1]" with partially matching picker field suggestions for "$$$FTComments$$$"
Given I wait for "4" seconds
Given I click on link "Add Functional Team"
Given I wait for "4" seconds
Given I populate grid "[3]" column "[1]" row "[2]" with partially matching picker field suggestions for "$$$FunctionalTeam2$$$"
Given I wait for "4" seconds
Given I populate grid "[3]" column "[2]" row "[2]" with partially matching picker field suggestions for "$$$FunctionalTeam2$$$"
Given I wait for "5" seconds   
Given I populate grid "[3]" column "[3]" row "[2]" with partially matching picker field suggestions for "$$$Duedate$$$"
Given I wait for "4" seconds
Given I populate grid "[3]" column "[4]" row "[2]" with partially matching picker field suggestions for "$$$FTComments$$$"
Given I wait for "4" seconds
Given I click on button "$$$Submit$$$"
And I click on button "$$$confButtonYes$$$"
Given I wait for "8" seconds

#Verify the details in the records
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
#Given I populate field "Search" with "$$$RequestID$$$"
#Given I wait for "8" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status4$$$"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#Given I verify the deails in the summary dashboard
Given I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)1$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description1$$$"
  Given I wait for "6" seconds
Given I verify field "Request Type(s)" contains "$$$RequestType(s)1$$$"
 Given I wait for "5" seconds
 
  #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
  Given I click on link "ACtive Tasks"
   Given I wait for "4" seconds
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "$$$InitialAssignmantFT2$$$"
   Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[2]" contains "Request Fulfillment"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[2]" contains "$$$InitialAssignmantFT1$$$"
  Given I wait for "6" seconds
  
  #Navigate to Fulfillment details additional dashboard and verify
  Given I click on link "Fulfillment Details"
  Given I wait for "6" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$FunctionalTeam1$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[2]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[2]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[2]" contains "Pending Response"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[2]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I wait for "6" seconds
  Given I click on link "Close"
  Given I wait for "6" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam2$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "Pending Response"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I wait for "6" seconds
 Given I click on link "Close"
  Given I wait for "6" seconds
 Given I verify grid "[1]" column "[1]" row "[3]" contains "$$$FunctionalTeam3$$$"
 Given I wait for "6" seconds
 Given I verify grid "[1]" column "[11]" row "[3]" contains "Retracted"
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
Given I verify grid "[1]" column "[1]" row "[2]" contains "Request Fulfillment"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[3]" contains "$$$Review&TakeActiononResponseEmailThread$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[3]" contains "$$$Comments1$$$"
Given I wait for "4" seconds
Then I logout
Then I tear down
 


  
    
