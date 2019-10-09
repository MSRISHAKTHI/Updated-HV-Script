@3.2aAcknowledgeonReviewCommentsfromAccountingTeam
Feature: Acknowledge the task send back by Accounting team

Background: Login to LH Test environment
Given I setup with "CHROME" browser
When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
And I set appian version to "19.2"
And I set appian locale to "en_US"
Then I login with username "csaUser1"
   
Scenario: Acknowledge the task send back by Accounting team
# Clear the filter set
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
  
#Click on the Review comments from Accounting Team
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
Given I verify link "Respond to Client" is present
Given I wait for "3" seconds
Given I click on link "Outgoing Emails"
Given I wait for "4" seconds
Given I verify link "Respond to Client" is present
Given I wait for "4" seconds
 
#Navigate to Audit history additional dashboard and verify
Given I click on button "AUDIT HISTORY"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Review Comments from Accounting Team"
Given I wait for "4" seconds

#Navigate to Request Details tab and verify the Request details and functional team details
Given I wait for "5" seconds
When I click on button "REQUEST DETAILS"
Given I wait for "5" seconds
Given I verify field "Priority" contains "High"
Given I wait for "5" seconds
Given I verify field "Request Type(s)" contains "Compliance"
Given I wait for "5" seconds
Given I verify field "Description" contains "Description"
Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "Accounting"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "Test"
Given I wait for "3" seconds
Given I verify grid "[2]" column "[6]" row "[1]" contains "10/04/2019"
Given I wait for "3" seconds
Given I verify grid "[2]" column "[11]" row "[1]" contains "Sent for Revision" 
Given I click on grid "[2]" column "[12]" row "[1]"
Given I wait for "5" seconds
Given I verify grid "[3]" column "[1]" row "[1]" contains "Review Comments from Accounting Team"
Given I click on link "Close[1]"
Given I wait for "5" seconds
Given I click on link "Close"
Given I wait for "6" seconds 

#Acknowledge and Close the task without resopnding back to client with Acknowledgement comments
Given I click on button "PROVIDE COMMENTS"
Given I wait for "5" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "CSA Comments"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
Given I wait for "7" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Review Comments from Accounting Team"
Given I wait for "5" seconds
When I click on button "ACKNOWLEDGE"
When I click on button "Yes"
Then I wait for "8" seconds

#I verify the status in the Records
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Request Owner Response"
Given I wait for "5" seconds

 #Navigate to Fulfillment details dashbaord of Client Service Request
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 When I click on link "Fulfillment Details"
 Given I wait for "4" seconds
 
#Check the status updated in Request Fulfillment Details grid under Request Fulfillment Dashbaord
Given I toggle box "Request Fulfillment Details" visibility
Given I wait for "2" seconds
Given I toggle box "Request Fulfillment Details" visibility
Given I wait for "5" seconds
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
Given I verify grid "[1]" column "[1]" row "[1]" contains "Accounting"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "Test"
Given I wait for "3" seconds
Given I verify grid "[1]" column "[6]" row "[1]" contains "10/04/2019"
Given I wait for "3" seconds
Given I verify grid "[1]" column "[11]" row "[1]" contains "Completed"
Given I wait for "3" seconds
Given I click on grid "[1]" column "[12]" row "[1]"
Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "Review Comments from Accounting Team"
Given I wait for "6" seconds
Given I click on link "Close[1]"
Given I wait for "5" seconds
Given I click on link "Close"
Given I wait for "5" seconds
 
#Observe in Audit History
Given I click on link "Audit History"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Review Comments from Accounting Team"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[1]" contains "CSA Comments"
Given I wait for "4" seconds
		   
#Navigate to Documents Dashboard to view the attached documents
Then I click on link "Documents"
Then I wait for "5" seconds
    
 #Verify the attached documents and sort the grid
 Given I sort grid "[1]" by column "Uploaded On"
 Given I wait for "5" seconds
 Given I sort grid "[1]" by column "Uploaded On"
 Given I wait for "5" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "Warning"
 Given I wait for "5" seconds
 Given I verify grid "[1]" column "[2]" row "[1]" contains "Task-Related Documents"
 Given I wait for "2" seconds
 Given I sort grid "[1]" by column "Documents"
 Given I wait for "2" seconds
 Given I sort grid "[1]" by column "Category"
 Given I wait for "5" seconds
 Given I sort grid "[1]" by column "Uploaded By"
 Given I wait for "5" seconds
   
 #Set the filter available in documents Dashboard 
 Then I populate field "[2]" with "Task-Related Documents"
 Then I wait for "5" seconds
 Then I click on button "CLEAR"
 Then I wait for "5" seconds
 Then I logout
 Then I tear down
    
    
    

