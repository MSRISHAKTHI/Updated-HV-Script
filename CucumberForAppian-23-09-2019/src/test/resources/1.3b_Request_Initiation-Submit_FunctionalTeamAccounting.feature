@1.3b_Request_Initiation-Submit_FunctionalTeamAccounting
Feature: IR with Functionalteam Accounting and Requestor Type Not Investor, Submit and verify the details in the records

Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"

Scenario: IR with Functionalteam not Accounting and Requestor Type Not Investor and Submit
#I open Provide Request Information form and Initiate a request
Given I open "$$$CSUrl$$$"
Given I wait for "10" seconds
When I click on site page "$$$Tasks$$$"  
Given I wait for "10" seconds 
Given I click on link "Initiate Request" 
Given I wait for "20" seconds 
       
#I Fill the values in the Comments and Documents section 
Given I populate field type "PARAGRAPH" named "[2]" with "$$$CommentsValue$$$" 
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
Given I wait for "20" seconds  
    
#I Fill the details in the Request Information section
#Given I click on radio option "$$$Priority$$$"
Given I click on checkbox option "[1]" 
Given I populate field "Issue Description" with "$$$IssueDescription$$$"
Given I wait for "3" seconds
Given I click on link "Click here to search for Requestor Institution" 
Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInvName1$$$"
Given I wait for "3" seconds
Given I click on grid "Search Result(s)" column "Name" row "[1]"
Then I click on button "Yes"
And I wait for "5" seconds
Given I populate field "Request Type(s)" with "$$$RequestType(s)$$$"
Given I populate field "Description" with "$$$Description$$$" 
Given I wait for "10" seconds  
    
#I Fill the details in the Client Information section
Given I click on link "Click here to search for Client Institution"
Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInvName1$$$"
Given I wait for "3" seconds
Given I click on grid "Search Result(s)" column "Name" row "[1]"
Given I wait for "3" seconds
Given I click on link "$$$SearchInvestorLink$$$" 
Given I wait for "5" seconds
Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInvName1$$$"
Given I wait for "5" seconds
Given I select grid "Search Result(s)" row "[2]"
Given I wait for "5" seconds
Given I click on link "$$$AddInvestor$$$"
Given I wait for "5" seconds
Given I populate grid "[1]" column "[3]" row "[1]" with "[2]"  
Given I wait for "5" seconds  
       
 #I Fill the details in the Functional Team section
 Given I click on checkbox option "[2]" 
 Given I wait for "5" seconds
 Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam3$$$"
 Given I wait for "3" seconds
 Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam3$$$"
 Given I wait for "5" seconds   
 Given I populate grid "[1]" column "[3]" row "[1]" with "$$$Duedate$$$"
 Given I wait for "5" seconds
 Given I populate grid "[1]" column "[4]" row "[1]" with "$$$FTComments$$$" 
 Given I wait for "5" seconds
 Given I click on button "$$$Submit$$$"
 Given I wait for "5" seconds
 And I click on button "$$$confButtonYes$$$"
 And I wait for "10" seconds
   
#I verify the status in Records
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status2$$$" 

 #Navigate to summary dashboard and verify the Request details and functional team details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 When I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
 Given I wait for "5" seconds
 Given I verify field "Client Name" contains "$$$ClientName$$$"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$" 
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[9]" row "[1]" contains "$$$FStatus2$$$" 
 Given I click on grid "[2]" column "[10]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$AssignTaskOwner$$$"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "5" seconds
 
 #Navigate to Fulfillment details additional dashboard and verify
Given I click on link "Fulfillment Details"
Given I wait for "6" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$FTComments$$$"
Given I wait for "3" seconds
Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$Duedate$$$"
Given I wait for "3" seconds
Given I verify grid "[1]" column "[11]" row "[1]" contains "$$$FStatus2$$$"
Given I wait for "3" seconds
Given I click on grid "[1]" column "[12]" row "[1]"
Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$AssignTaskOwner$$$"
Given I wait for "4" seconds
Given I click on link "Close[1]"
Given I wait for "5" seconds
Given I click on link "Close"
Given I wait for "5" seconds
 
#Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
Given I click on link "Active Tasks"
Given I sort grid "[2]" by column "Assigned On"
Given I wait for "4" seconds
Given I sort grid "[2]" by column "Assigned On"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$AssignTaskOwner$$$"
Given I wait for "3" seconds
Given I verify grid "[2]" column "[4]" row "[1]" contains "$$$InitialAssignmantFT3$$$"
  
#Navigate to Audit history additional dashboard and verify
Given I click on link "Audit History"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$InitiateRequest$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "$$$CommentsValue$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$AssignTaskOwner$$$"
Given I wait for "4" seconds

#Navigate to Documents and view attachments
Then I click on link "Documents"
Then I wait for "10" seconds
    
 #Verify the documents and Set the filters to select document category and sort the grid
 Given I sort grid "[1]" by column "Uploaded On"
 Given I wait for "5" seconds
 Given I sort grid "[1]" by column "Uploaded On"
 Given I wait for "5" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$DocUploadedLink1$$$"
 Given I wait for "5" seconds
 Given I verify grid "[1]" column "[2]" row "[1]" contains "Task-Related Documents"
 Given I wait for "2" seconds
 Given I sort grid "[1]" by column "Documents"
 Given I wait for "2" seconds
 Given I sort grid "[1]" by column "Category"
 Given I wait for "5" seconds
 Given I sort grid "[1]" by column "Uploaded By"
 Given I wait for "5" seconds
 Then I populate field "[2]" with "Task-Related Documents"
 Then I wait for "5" seconds
 Then I click on button "$$$CLEAR$$$"
 Then I wait for "5" seconds
 Then I logout
 Then I tear down
 
    
            