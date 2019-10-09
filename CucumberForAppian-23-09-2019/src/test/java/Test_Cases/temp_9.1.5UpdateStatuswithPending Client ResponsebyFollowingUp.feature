@9.1.5UpdateStatuswithPendingRequestOwnerResponsebyFollowUp
Feature: Update status related action submission with status Pending Request Owner Response with Follow up
 
 Background: Login to LH Test environment
Given I setup with "CHROME" browser
When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
And I set appian version to "19.2"
And I set appian locale to "en_US"
Then I login with username "csaUser1"
  

Scenario: Update status related action submission with status Pending Request Owner Response with Follow up
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I clear field "Select Filter Set(s)"
       
   #Click on the task
Given I wait for "5" seconds
Given I populate field "Search" with "8745"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "5" seconds
    
    #Navigate to update status related action, select Pending Client response status, enter comments for the same and Folloe up
    Given I click on record related action "UPDATE STATUS"
    Given I wait for "5" seconds
    Given I click on radio option "Pending Client Response"
    Given I wait for "5" seconds
    Given I populate field "Comments" with "Good to go"
    Given I wait for "5" seconds
    
    #Verfiy that cancel buttion is present and then click on close button to submit
    Given I verify button "CANCEL" is present
      Given I wait for "5" seconds
      Given I verify button "COMPLETE" is present
      Given I wait for "5" seconds
    Given I click on button "Follow Up"
    Given I wait for "5" seconds
    Given I click on button "Yes"
    Given I wait for "10" seconds
    
    #Send Follow up
    #Send Response to client by entering To Recipients and CC Recipients and Email Subject and Body
   Given I wait for "5" seconds
   Given I click on checkbox option "High"
   Given I wait for "5" seconds
   Given I toggle box "Email[2]" visibility
    Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[1]" with "srishakthim@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[2]" with "swetar@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[3]" with "Respond to Client"
   Given I wait for "5" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with "Acknowledge"
   Given I wait for "5" seconds
   When I populate field type "FILE_UPLOAD" named "Add Attachments" with "C:\Users\srishakthim\Pictures\Warning.png"
   Given I wait for "8" seconds
   When I populate grid "[1]" column "[1]" row "[1]" with "Respond related document"
 When I wait for "5" seconds
   And I click on button "SEND" 
   When I wait for "5" seconds
    And I click on button "Yes" 
    When I wait for "8" seconds
     
     #I verify the status in Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "6" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Client Response" 
    
 #Navigate to summary dashboard and verify the Request details and functional team details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 
 #Navigate to Emails dashboard and verify
 Given I click on link "Emails"
 Given I click on link "All Emails"
   Given I wait for "4" seconds
 Given I wait for "5" seconds
 Given I verify link "Respond to Client" is present
 Given I wait for "3" seconds
 Given I click on link "Outgoing Emails"
   Given I wait for "4" seconds
 Given I verify link "Respond to Client" is present
 Given I wait for "4" seconds
    
    #Logout and then close the browser
    Given I logout
    Given I tear down

