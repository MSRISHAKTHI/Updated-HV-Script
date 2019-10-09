@4.1_SendBackToCSAUserFromRequestFulfilmentTask
Feature: Send back to CSA User from Request Fulfilment task

Background: Login to LH Test environment
Given I setup with "CHROME" browser
When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
And I set appian version to "19.2"
And I set appian locale to "en_US"
Then I login with username "accountingControllerUser1"
    
Scenario: Send back to CSA User from Request Fulfilment task
# Add a new filter set and save
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"
 Given I wait for "5" seconds
 
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
  Given I wait for "4" seconds
 Given I click on link "All Emails"
 Given I wait for "5" seconds
 Given I verify link "Respond to Client" is present
 Given I wait for "3" seconds
 Given I click on link "Outgoing Emails"
 Given I wait for "4" seconds
 Given I verify link "Respond to Client" is present
 Given I wait for "4" seconds
 
#Navigate to Audit history  and verifytab
Given I click on button "AUDIT HISTORY"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Request Fulfillment"
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
 Given I verify field "Client Name" contains "RJA - Atlanta - 1100 Abernathy Rd NE"
 Given I wait for "5" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "Accounting"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "10/04/2019"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "Pending Response" 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I sort grid "[3]" by column "Assigned On"
Given I wait for "5" seconds
Given I sort grid "[3]" by column "Assigned On"
Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "6" seconds 

#Add details and Send to CSA
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
		Given I verify grid "[2]" column "[1]" row "[1]" contains "Warning"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Documents"
   Given I wait for "2" seconds
   Given I sort grid "[2]" by column "Category"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Uploaded By"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Uploaded On"
   Given I wait for "5" seconds
   
#Verify the manager section visibility
Given I verify field "Name[1]" contains "Accounting Manager 1"
Given I wait for "4" seconds
Given I verify field "Is approval required?" contains "Yes"
Given I wait for "4" seconds
Given I toggle box "Manager Information" visibility
Given I wait for "4" seconds

#Add details and Send to CSA
Given I populate field type "PARAGRAPH" named "[1]" with "ReqF Comments"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
Given I wait for "7" seconds
When I click on button "SEND TO CSA"
When I click on button "Yes"
Then I wait for "8" seconds

#Verify the Status of Request in Client Service Records
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
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "10" seconds

 #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
Given I click on link "Active Tasks"
Given I wait for "5" seconds  
Given I sort grid "[2]" by column "Assigned On"
Given I wait for "4" seconds
Given I sort grid "[2]" by column "Assigned On"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "Review Comments from Accounting Team"
Given I wait for "3" seconds
Given I verify grid "[2]" column "[4]" row "[1]" contains "GCS Client Service Associate"
Given I wait for "5" seconds
  
#Navigate to Records and Check for Fullfilment details dashboard
 Given I click on link "Fulfillment Details"
 Given I wait for "4" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "Accounting"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "10/04/2019"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "Sent for Revision" 
 Given I wait for "5" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Review Comments from Accounting Team"
 Given I wait for "5" seconds
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
Given I verify grid "[1]" column "[1]" row "[1S]" contains "Review Comments from Accounting Team"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[9]" row "[2]" contains "ReqF Comments"
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
 
    
    
    

