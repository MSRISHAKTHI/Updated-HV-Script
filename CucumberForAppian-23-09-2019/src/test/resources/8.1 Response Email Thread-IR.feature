@8.1ResponseEmailThread-IR
Feature: Response Email Thread task-Initiate New Request

Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"
  

Scenario: Response Email Thread task-Initiate New Request

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

#I navigate to Email thread dashboard, select Initiate new request option and confirm it
Given I click on link "Active Tasks"
Given I wait for "8" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$Review&TakeActiononResponseEmailThread$$$"
Given I wait for "8" seconds
Given I click on grid "[1]" column "[1]" row "[1]"
Given I wait for "6" seconds
Given I select grid "[1]" row "[1]"
Given I wait for "5" seconds
#Given I click on radio option "Initiate New Request"
Given I wait for "6" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$CommentsValue$$$" 
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
Given I wait for "5" seconds    
Given I click on button "$$$CONFIRM$$$"
Given I wait for "5" seconds 
Given I click on button "$$$confButtonYes$$$"

#Verify the details in the records
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
#Given I populate field "Search" with "$$$RequestID$$$"
#Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status1$$$"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds
Given I click on link "Active Tasks"
Given I wait for "8" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$InitiateRequest$$$"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[4]" row "[1]" contains "$$$CsaGroup$$$"
Given I wait for "5" seconds

#Given I verify the client details in the summary dashboard
Given I click on link "Summary"
Given I wait for "5" seconds
Given I verify field "Client Name" contains "$$$ClientName$$$"
Given I wait for "5" seconds
 
 #Navigate to Audit history additional dashboard and verify
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$InitiateRequest$$$"
Given I wait for "4" seconds
Then I logout
Then I tear down
 


  
    
   