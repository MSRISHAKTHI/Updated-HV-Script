@9.1.4UpdateStatuswithPendingClientResponse
Feature: Update status related action submission with status Pending Client Response
 
 Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"
  

Scenario: Update status related action submission with status Pending Client Response
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I click on site page "$$$Records$$$"
Given I wait for "8" seconds
Given I clear field "Select Filter Set(s)"
       
   #Click on the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "5" seconds
    
    #Navigate to update status related action, select Pending Client response and then enter comments for the same
    Given I click on record related action "UPDATE STATUS"
    Given I wait for "5" seconds
    Given I click on radio option "$$$Option3$$$"
    Given I wait for "5" seconds
    Given I populate field "Comments" with "$$$CommentsValue$$$"
    Given I wait for "5" seconds
    
    #Verfiy that cancel buttion is present and then click on close button to submit
    Given I verify button "$$$Cancel$$$" is present
      Given I wait for "5" seconds
      Given I verify button "$$$FollowUp$$$" is present
      Given I wait for "5" seconds
    Given I click on button "$$$Complete$$$"
    Given I wait for "5" seconds
    Given I click on button "$$$confButtonYes$$$"
    Given I wait for "10" seconds
    
     #I verify the status in Records
    Given I click on site page "$$$Records$$$"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "6" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status4$$$" 
    
    #Logout and then close the browser
    Given I logout
    Given I tear down