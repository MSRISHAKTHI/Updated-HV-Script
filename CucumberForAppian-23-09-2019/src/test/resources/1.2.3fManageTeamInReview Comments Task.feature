@1.2.3fManageFTinReviewCommentsfromFTTask
Feature: Manage teams in the Review comments from functional team task

   Background: Login to LH Test environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$CsaUser$$$"
 
    
Scenario: Manage teams in the Review comments from functional team task
    # Add a new filter set and save
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"
Given I wait for "15" seconds

#Click on the Review Comments from Functional Team
Given I wait for "8" seconds
Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "8" seconds

#Navigate to Request Details tab and verify the Request details and functional team details
  Given I wait for "5" seconds
 When I click on button "REQUEST DETAILS"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
  Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "$$$FStatus3$$$" 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$ReviewCommentsCT$$$"
  Given I wait for "5" seconds
 Given I verify grid "[3]" column "[9]" row "[2]" contains "$$$RFComments$$$"
  Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "6" seconds 

#Navigate to provide Comments tab
Given I click on button "PROVIDE COMMENTS"
Given I wait for "5" seconds
   
   #manage the functional team and complete
   Given I click on link "Manage Teams"
   Given I wait for "5" seconds
   Given I click on link "Add Functional Team"
   Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "$$$FunctionalTeam2$$$"
   Given I wait for "3" seconds
   Given I populate grid "[1]" column "[4]" row "[2]" with "$$$FTComments$$$"
   Given I wait for "3" seconds
   Given I verify grid "[1]" column "[5]" row "[2]" contains "Added"
   Given I wait for "3" seconds
   When I verify button "$$$Cancel$$$" is present
   When I wait for "3" seconds  
   When I click on button "$$$Complete$$$"
   When I wait for "3" seconds
   When I click on button "$$$confButtonYes$$$"
   Then I wait for "5" seconds
   
   #Verify the warning message
Given I verify text "This task has been already completed. So kindly close this page and please check the status" is present
Given I wait for "5" seconds
Given I click on button "Close[1]"
Given I wait for "5" seconds
   
   #Verify the Status of Request in Client Service Records
Given I click on site page "$$$Records$$$"
Given I wait for "20" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "15" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status2$$$"
Given I wait for "5" seconds
Given I click on grid "[1]" column "[3]" row "[1}"
Given I wait for "4" seconds
   
   #Navigate to summary dashboard and verify the Request details and functional team details
 When I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
 Given I wait for "5" seconds
 Given I sort grid "[2]" by column "Assigned On"
 Given I wait for "5" seconds
 Given I sort grid "[2]" by column "Assigned On"
  Given I wait for "5" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam2$$$" 
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[9]" row "[1]" contains "$$$FStatus1$$$" 
  Given I wait for "5" seconds
 Given I click on grid "[2]" column "[10]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
 Given I wait for "4" seconds
  Given I click on link "Close"
  Given I wait for "6" seconds
  
 #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
  Given I click on link "Active Tasks"
   Given I wait for "4" seconds
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "$$$InitialAssignmantFT2$$$"
   Given I wait for "4" seconds
  
  #Navigate to Fulfillment details additional dashboard and verify
  Given I click on link "Fulfillment Details"
  Given I wait for "6" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam2$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "$$$FStatus1$$$"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
 Given I wait for "6" seconds
  Given I click on link "Close"
  Given I wait for "6" seconds
 Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$FunctionalTeam1$$$"
 Given I wait for "6" seconds
 Given I verify grid "[1]" column "[11]" row "[2]" contains "$$$FStatus1$$$"
 Given I wait for "4" seconds
 
  #Navigate to Audit history additional dashboard and verify
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$ManageFTeams$$$"
Then I logout
    Then I tear down
