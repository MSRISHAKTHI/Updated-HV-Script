@1.2.1aRequestFulfillmentTask-Complete
Feature: Submit the task assigned to Functional Team- Request Fulfillment Task

 Background: Login to LH Test environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$complianceUser$$$"
    
Scenario: Submit the task assigned to Functional Team
Given I wait for "5" seconds   
    Given I open "$$$CSUrl$$$"
    Given I wait for "10" seconds
    When I click on site page "$$$Tasks$$$" 
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
   Given I wait for "20" seconds
 
 #Navigate to Audit history  and verifytab
 Given I click on button "AUDIT HISTORY"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
Given I wait for "4" seconds

#Navigate to Request Details tab and verify the Request details and functional team details
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
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "$$$FStatus1$$$" 
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
 Given I click on link "Close"
 Given I wait for "6" seconds 
 
 #Navigate to Documents Dashboard to view the attached documents and Set the filter
    Then I click on button "Documents"
    Then I wait for "5" seconds
    Then I populate field "[4]" with "Task-Related Documents"
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
   
  #Verify the Clear filter available in documents Dashboard 
   Then I click on button "$$$CLEAR$$$"
   Then I wait for "5" seconds
 
  #Navigate to Provide Comments and Verify documents in All documents grid
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
		Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$DocUploadedLink1$$$"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Documents"
   Given I wait for "2" seconds
   Given I sort grid "[2]" by column "Category"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Uploaded By"
   Given I wait for "5" seconds
   Given I sort grid "[2]" by column "Uploaded On"
   Given I wait for "5" seconds
   
   #Add details and Complete
Given I populate field type "PARAGRAPH" named "[1]" with "$$$RFComments$$$"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$docPath$$$"
Given I wait for "7" seconds
When I click on button "$$$Complete$$$"
Given I wait for "5" seconds
When I click on button "$$$confButtonYes$$$"
Then I wait for "8" seconds 

#Navigate to Records and Check for Fullfilment details dashboard
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
   
   #navigate to Fulfillment details additional dashboard and observe
   Given I click on link "Fulfillment Details"
   Given I wait for "10" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "2" seconds
   Given I toggle box "Request Fulfillment Details" visibility
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$"
    Given I wait for "5" seconds
   Given I verify grid "[1]" column "[11]" row "[1]" contains "$$$FStatus4$$$"
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
    
     #Click to view review history
    Given I click on grid "[1]" column "[12]" row "[1]"
    Given I wait for "3" seconds
    Given I toggle box "[2]" visibility
    Given I wait for "3" seconds
    Given I toggle box "[2]" visibility
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$ReviewResponseCT$$$"
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[1]" row "[2]" contains "$$$RequestFulfillment$$$"
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[8]" row "[2]" contains "Completed"
    Given I wait for "3" seconds
    Given I verify grid "[2]" column "[9]" row "[2]" contains "$$$RFComments$$$"
    Given I wait for "3" seconds
    Given I sort grid "[2]" by column "Assigned On"
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
    Given I wait for "5" seconds
    Then I click on link "Close"
    Given I wait for "50" seconds  
    
    #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
 Given I click on link "Active Tasks"
Given I wait for "5" seconds  
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$ReviewResponseCT$$$"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "$$$CsaGroup$$$"
  Given I wait for "5" seconds
    
  # Observe in Audit History
		 Given I click on link "Audit History"
		 Given I wait for "4" seconds
		 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
		Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$ReviewResponseCT$$$"
		Given I wait for "4" seconds
		Given I verify grid "[1]" column "[9]" row "[2]" contains "$$$RFComments$$$"
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
   Then I click on button "CLEAR"
   Then I wait for "5" seconds
   Then I logout
   Then I tear down
   
                     