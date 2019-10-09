@3.5aAcknowledgeonReviewCommentsfromACcTeamtaskbyrespondingtoclient
Feature: Acknowledge the Review comments from accounting team and respond to client by selecting option as Pending Client Respose

 Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"

Scenario: Acknowledge and Close the task sent back by Accounting team
#Clear the filter set
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"

#Click on the Review response from Functional Team
Given I wait for "8" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "8" seconds

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
 
 #Navigate to Audit history additional dashboard and verify
 Given I click on button "AUDIT HISTORY"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$ReviewComments1$$$"
Given I wait for "4" seconds

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
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "$$$FStatus3$$$" 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$ReviewComments1$$$"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "6" seconds 

#Acknowledge and Close the task with resopnding back to client with Acknowledgement comments
Given I click on button "PROVIDE COMMENTS"
Given I wait for "5" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$CSARCComments$$$"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
Given I wait for "7" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$ReviewComments1$$$"
Given I wait for "5" seconds
Given I click on checkbox option "[2]"
When I wait for "3" seconds
When I click on button "$$$ACKNOWLEDGE$$$"
When I click on button "$$$confButtonYes$$$"
Then I wait for "5" seconds

 #Send Response to client by entering To Recipients and CC Recipients and Email Subject and Body
 Given I wait for "5" seconds
 Given I click on checkbox option "High"
 Given I wait for "5" seconds
 Given I toggle box "Email[2]" visibility
 Given I wait for "5" seconds
 Given I populate field type "TEXT" named "[1]" with "$$$TO$$$"
 Given I wait for "5" seconds
 Given I populate field type "TEXT" named "[2]" with "$$$CC$$$"
 Given I wait for "5" seconds
 Given I populate field type "TEXT" named "[3]" with "$$$EmailSubject$$$"
 Given I wait for "5" seconds
 Given I populate field type "PARAGRAPH" named "[1]" with "$$$EmailBody$$$"
 Given I wait for "5" seconds
 When I populate field type "FILE_UPLOAD" named "Add Attachments" with "$$$docPath$$$"
 When I wait for "5" seconds 
 #Given I populate picker field "[1]" with partially matching suggestions for "$$$HVUser1$$$"
 #Given I wait for "5" seconds 
 When I populate grid "[1]" column "[1]" row "[1]" with "$$$RenamingAttachmentName$$$"
 When I wait for "5" seconds
     #
 #Update Status based on two options which is not mandatory . Select Option as Pending Client Respose
 #Given I click on radio option "[2]"
 #Given I wait for "5" seconds
 Then I click on button "$$$SEND$$$"
 Then I click on button "$$$confButtonYes$$$"
   
#Verify the Status of Request in Client Service Records
Given I wait for "5" seconds
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status4$$$"
When I wait for "5" seconds
   
#Navigate to Fulfillment details dashbaord of Client Service Request
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds
When I click on link "Fulfillment Details"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$FTComments$$$"
Given I wait for "3" seconds
Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$Duedate$$$"
Given I wait for "3" seconds
Given I verify grid "[1]" column "[11]" row "[1]" contains "$$$FStatus5$$$"
Given I wait for "3" seconds
Given I click on grid "[1]" column "[12]" row "[1]"
Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$ReviewComments1$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[8]" row "[1]" contains "$$$FStatus5$$$"
Given I click on link "Close[1]"
Given I wait for "5" seconds
Given I click on link "Close"
 Given I wait for "5" seconds
   
#Navigate to Emails dashboard and verify
Given I click on link "Emails"
Given I wait for "4" seconds
Given I click on link "All Emails"
Given I wait for "5" seconds
Given I verify link "$$$EmailSubject$$$" is present
Given I wait for "3" seconds
Given I click on link "Outgoing Emails"
Given I wait for "4" seconds
Given I verify link "$$$EmailSubject$$$" is present
Given I wait for "4" seconds
    
#Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$UpdateStatus$$$"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$PrepareResponseEmail$$$"
Given I wait for "6" seconds
Given I verify grid "[1]" column "[9]" row "[3]" contains "$$$CSARCComments$$$"
Given I wait for "4" seconds

 #Navigate to Documents and view attachments
 Then I click on link "Documents"
 Then I wait for "10" seconds
    
 #Verify the documents and sort the grid
 Given I sort grid "[1]" by column "Uploaded On"
 Given I wait for "5" seconds
 Given I sort grid "[1]" by column "Uploaded On"
 Given I wait for "5" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$RenamingAttachmentName$$$"
 Given I wait for "5" seconds
 Given I verify grid "[1]" column "[2]" row "[1]" contains "Outgoing Email Attachments"
 Given I wait for "2" seconds
 Given I verify grid "[1]" column "[1]" row "[2]" contains "$$$DocUploadedLink1$$$"
 Given I wait for "5" seconds
 Given I verify grid "[1]" column "[2]" row "[2]" contains "Task-Related Documents"
 Given I wait for "2" seconds
 Given I sort grid "[1]" by column "Documents"
 Given I wait for "2" seconds
 Given I sort grid "[1]" by column "Category"
 Given I wait for "5" seconds
 Given I sort grid "[1]" by column "Uploaded By"
 Given I wait for "5" seconds
   
 #Verify the filters to select document category
 Then I populate field "[2]" with "Outgoing Email Attachments"
 Then I wait for "5" seconds
 Then I populate field "[2]" with "Task-Related Documents"
 Then I wait for "5" seconds
 Then I click on button "$$$CLEAR$$$"
 Then I wait for "5" seconds
 Then I logout
 Then I tear down

    
    
    