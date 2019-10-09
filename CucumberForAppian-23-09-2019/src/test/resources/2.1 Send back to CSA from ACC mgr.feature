@2.1_Send_TO_CSA_From_ACC_Mgr
Feature: Send back th Assign task Owner task to Request Owner(CSA User)

#Run Feature file 3 to send a task to accounting manager group
 Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$AccountingManager$$$"
     
Scenario: Send back th Assign task Owner task to Request Owner(CSA User)
#I Log in as Accounting manager user
Given I open "$$$CSUrl$$$"
Given I wait for "10" seconds
When I click on site page "$$$Tasks$$$"
Given I wait for "5" seconds 
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I click on button "$$$GrpTasks$$$"
Given I wait for "5" seconds   
  
#I reassign the task to group and pick a task and accept it
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I select grid "[1]" row "[1]"
Given I wait for "4" seconds
And I click on button "$$$ReassigntoGrpButton$$$"
Given I wait for "5" seconds
Given I click on button "YES"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "8" seconds
Given I click on button "$$$Accept$$$"
   
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
Given I verify field "Client Name" contains "$$$ClientName$$$"
Given I wait for "5" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
Given I wait for "3" seconds
Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
Given I wait for "3" seconds
Given I verify grid "[2]" column "[11]" row "[1]" contains "$$$FStatus2$$$"
Given I click on grid "[2]" column "[12]" row "[1]"
Given I wait for "5" seconds
Given I sort grid "[3]" by column "Assigned On"
Given I wait for "5" seconds
Given I sort grid "[3]" by column "Assigned On"
Given I wait for "5" seconds
Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$AssignTaskOwner$$$"
Given I click on link "Close[1]"
Given I wait for "5" seconds
Given I click on link "Close"
Given I wait for "5" seconds 
 
#Navigate to Emails dashboard and verify
Given I click on button "EMAILS"
Given I wait for "5" seconds
Given I click on link "All Emails"
Given I wait for "4" seconds
Given I wait for "5" seconds
Given I verify link "$$$EmailSubject$$$" is present
Given I wait for "3" seconds
Given I click on link "Outgoing Emails"
Given I wait for "4" seconds
Given I verify link "$$$EmailSubject$$$" is present
Given I wait for "4" seconds
 
#Navigate to Audit history additional dashboard and verify
Given I click on button "AUDIT HISTORY"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[3]" contains "Initial Request Review"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[3]" contains "$$$CommentsValue$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$AssignTaskOwner$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$PrepareResponseEmail$$$"
Given I wait for "4" seconds
   
# I add Comments and send back the task to CSA user
Given I click on button "PROVIDE COMMENTS"
		Given I wait for "4" seconds
		Given I toggle box "Requestor & Request Information" visibility
		Given I wait for "4" seconds
		Given I toggle box "Client Information" visibility
		Given I wait for "4" seconds
		Given I toggle box "All Documents" visibility
		Given I wait for "4" seconds
		Given I toggle box "All Documents" visibility
		Given I wait for "4" seconds
		Given I verify grid "[2]" column "[1]" row "[2]" contains "$$$DocUploadedLink1$$$"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Documents"
   Given I wait for "2" seconds
   Given I sort grid "[2]" by column "Category"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Uploaded By"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Uploaded On"
   Given I wait for "5" seconds
   
   # I add Comments and send back the task to CSA user
   Given I populate field type "PARAGRAPH" named "[1]" with "$$$AMComments$$$"  
   Given I wait for "5" seconds
   Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
   Given I wait for "8" seconds  
   Given I click on button "$$$SendToCSA$$$"
   Given I wait for "5" seconds
   Given I click on button "$$$confButtonYes$$$"
   And I wait for "10" seconds
   
#I verify the status in the Records
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status3$$$"
Given I wait for "5" seconds

#Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "5" seconds
Given I click on link "Active Tasks"
Given I wait for "5" seconds  
Given I sort grid "[2]" by column "Assigned On"
Given I wait for "4" seconds
Given I sort grid "[2]" by column "Assigned On"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$ReviewComments$$$"
Given I wait for "3" seconds
Given I verify grid "[2]" column "[4]" row "[1]" contains "$$$CsaGroup$$$"
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
Given I verify grid "[1]" column "[11]" row "[1]" contains "$$$FStatus3$$$"
Given I wait for "3" seconds
Given I click on grid "[1]" column "[12]" row "[1]"
Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$ReviewComments$$$"
Given I wait for "4" seconds
Given I click on link "Close[1]"
Given I wait for "5" seconds
Given I click on link "Close"
Given I wait for "5" seconds
 
#Navigate to Audit history additional dashboard and verify
Given I click on link "Audit History"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$ReviewComments$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[3]" contains "$$$AMComments$$$"
Given I wait for "4" seconds

#Navigate to Documents Dashboard to view the attached documents
Then I click on link "Documents"
Then I wait for "5" seconds
    
#Verify the attached documents and sort the grid
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
 
#Verify the filter available in documents Dashboard 
 Then I populate field "[2]" with "Task-Related Documents"
 Then I wait for "5" seconds
 Then I click on button "$$$CLEAR$$$"
 Then I wait for "5" seconds
 Then I logout
 Then I tear down
