@2.2_Assign_To_TaskOwner
Feature: Assign the Request fulfilment task to the task owner

#Run Feature file 1.3 to send a task to accounting manager group
Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$AccountingManager$$$"

Scenario: Assign the Request fulfilment task to the task owner
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
Given I wait for "20" seconds
   
#Add Comments, pick up the task owner and assign the task to the task owner
#Given I populate picker field "Task Owner" with partially matching suggestions for "$$$TaskOwner$$$" 
Given I wait for "5" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$AMComments$$$"  
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$docPath$$$"
Given I wait for "10" seconds  
Given I click on button "[11]"
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
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status2$$$"
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
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
Given I wait for "3" seconds
Given I verify grid "[1]" column "[5]" row "[1]" contains "$$$TaskOwner$$$"
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
Given I verify grid "[1]" column "[11]" row "[1]" contains "$$$FStatus1$$$"
Given I wait for "3" seconds
Given I click on grid "[1]" column "[12]" row "[1]"
Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
Given I wait for "4" seconds
Given I click on link "Close[1]"
Given I wait for "5" seconds
Given I click on link "Close"
Given I wait for "5" seconds
  
#Navigate to Audit history additional dashboard and verify
Given I click on link "Audit History"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "3" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
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
 
#Set the filter available in documents Dashboard 
Then I populate field "[2]" with "Task-Related Documents"
Then I wait for "5" seconds
Then I click on button "$$$CLEAR$$$"
Then I wait for "5" seconds
Then I logout
Then I tear down