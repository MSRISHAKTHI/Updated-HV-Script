@5.2ApproveRespose-Complete
Feature: Complete the Approve Response from Accounting Manager
  
 Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$AccountingManager$$$"
     
Scenario: Complete the Approve Response from Accounting Manager
# Clear the filter set
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"
Given I wait for "4" seconds

#Fetch the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#Navigate to Emails dashboard and verify
 Given I click on button "EMAILS"
 Given I click on link "All Emails"
 Given I wait for "4" seconds
 Given I wait for "5" seconds
 Given I verify link "$$$EmailSubject$$$" is present
 Given I wait for "3" seconds
 Given I click on link "Outgoing Emails"
 Given I wait for "4" seconds
 Given I verify link "$$$EmailSubject$$$" is present
 Given I wait for "4" seconds
 
 #Navigate to Audit history  and verifytab
 Given I click on button "AUDIT HISTORY"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$ApproveResponse$$$"
 Given I wait for "4" seconds  
Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$RequestFulfillment$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "$$$RFComments$$$"
Given I wait for "8" seconds

#Navigate to Request Details tab and verify the Request details and functional team details
 When I click on button "REQUEST DETAILS"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
  Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "$$$FStatus8$$$"
 Given I wait for "3" seconds 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I sort grid "[3]" by column "Assigned On"
Given I wait for "5" seconds
Given I sort grid "[3]" by column "Assigned On"
Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$ApproveResponse$$$"
 Given I verify grid "[3]" column "[9]" row "[2]" contains "$$$RFComments$$$"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "6" seconds 

#Add details and Send to CSA
Given I click on button "PROVIDE COMMENTS"
Given I wait for "4" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$ApproveComments$$$"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$docPath$$$"
Given I wait for "7" seconds
When I click on button "$$$Complete$$$"
Given I wait for "5" seconds
When I click on button "$$$confButtonYes$$$"
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
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status3$$$"
Given I wait for "5" seconds
 Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "10" seconds
   
   #Navigate to Request Details tab and verify the Request details and functional team details
 Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
  Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[9]" row "[1]" contains "$$$FStatus4$$$" 
 Given I click on grid "[2]" column "[10]" row "[1]"
 Given I wait for "5" seconds
 Given I sort grid "[3]" by column "Assigned On"
Given I wait for "5" seconds
Given I sort grid "[3]" by column "Assigned On"
Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$ReviewResponse$$$"
  Given I wait for "5" seconds
  Given I verify grid "[3]" column "[9]" row "[2]" contains "$$$ApproveComments$$$"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "6" seconds  

 #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
  Given I click on link "Active Tasks"
Given I wait for "5" seconds  
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$ReviewResponse$$$"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "$$$CsaGroup$$$"
  Given I wait for "5" seconds
  
#Navigate to Records and Check for Fullfilment details dashboard
   Given I click on link "Fulfillment Details"
   Given I wait for "4" seconds
   Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "$$$FStatus4$$$" 
 Given I wait for "5" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$ReviewResponse$$$"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[2]" contains "$$$ApproveComments$$$"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "6" seconds 
   
     # Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$ReviewResponse$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "$$$ApproveComments$$$"
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
 
    
    
    