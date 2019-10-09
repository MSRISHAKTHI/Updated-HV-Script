@8.4ResponseEmailThread-Save
Feature: Response Email Thread task-Save

Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"
  

Scenario: Save the Response Email Thread Task
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I click on site page "$$$Records$$$"
Given I wait for "8" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "8" seconds
#Given I populate field "Search" with "$$$RequestID$$$"
       
   #Click on the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#I navigate to Email thread dashboard, select No Action needed and confirm it
Given I click on link "Active Tasks"
Given I wait for "8" seconds
Given I click on grid "[1]" column "[1]" row "[1]"
Given I wait for "6" seconds
Given I select grid "[1]" row "[1]"
Given I wait for "5" seconds
#Given I click on radio option "No Action Needed"
Given I wait for "5" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$CommentsValue$$$" 
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
Given I wait for "8" seconds    
Given I click on button "$$$Save$$$"
Given I wait for "8" seconds

#Verify the saved task in Tasks tab
Given I click on site page "$$$Tasks$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "8" seconds
#Given I populate field "Search" with "$$$RequestID$$$"
#Given I wait for "5" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "6" seconds 
Given I verify grid "[1]" column "[3]" row "[1]" contains "$$$Review&TakeActiononResponseEmailThread$$$"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "6" seconds
Given I verify text "$$$CommentsValue$$$" is present
Given I wait for "4" seconds

#Verify the details in the records
Given I click on site page "$$$Records$$$"
Given I wait for "8" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "8" seconds
#Given I populate field "Search" with "$$$RequestID$$$"
#Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds
Given I click on link "Active Tasks"
Given I wait for "8" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$Review&TakeActiononResponseEmailThread$$$"
Given I wait for "8" seconds
Given I click on grid "[1]" column "[1]" row "[1]"
Given I wait for "8" seconds

#Verify the saved task details
Given I verify text "$$$CommentsValue$$$" is present
Given I wait for "4" seconds
Then I logout
Then I tear down



  
    
   