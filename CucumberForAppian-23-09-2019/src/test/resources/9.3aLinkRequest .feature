@9.3aLinkRequest
Feature: Link and Unlink Request

   Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"
  

Scenario: Link the request Initiated
Given I open "$$$CSUrl$$$"
Given I wait for "8" seconds 
Given I click on site page "$$$Records$$$"
Given I wait for "8" seconds
Given I clear field "Select Filter Set(s)"
       
   #Click on the record
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "10" seconds
    
#Navigate to link request related action, verify the pagination and sorting of Request details grid
Given I click on link "Related Actions"
Given I wait for "6" seconds
Given I click on link "Link/Unlink Requests"
Given I wait for "10" seconds
    Given I click on grid "[1]" navigation "next"
    Given I click on grid "[1]" navigation "last"
    Given I click on grid "[1]" navigation "previous"
    Given I click on grid "[1]" navigation "first"
    Given I wait for "5" seconds
    
    #Click on sorting of the requests details grid
    Given I sort grid "[1]" by column "Priority"
    Given I sort grid "[1]" by column "Priority"
    Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Type"
    Given I sort grid "[1]" by column "Request Type"
    Given I sort grid "[1]" by column "Received Date"
    Given I sort grid "[1]" by column "Received Date"
    Given I sort grid "[1]" by column "Due Date"
    Given I sort grid "[1]" by column "Due Date"
    Given I sort grid "[1]" by column "Status"
    Given I sort grid "[1]" by column "Status"
    Given I sort grid "[1]" by column "Request Owner"
    Given I sort grid "[1]" by column "Request Owner"
    Given I wait for "5" seconds
    
    #Click on link request
    #Given I click on grid "[1]" column "[10]" row "[1]"
    #Given I wait for "5" seconds
    Given I click on grid "[1]" column "[10]" row "[1]"
    Given I wait for "10" seconds
    
    #Click on sorting of newly linked requests grid
    Given I sort grid "[2]" by column "Priority"
    Given I sort grid "[2]" by column "Priority"
    Given I sort grid "[2]" by column "Request Id"
    Given I sort grid "[2]" by column "Request Id"
    Given I sort grid "[2]" by column "Request Type"
    Given I sort grid "[2]" by column "Request Type"
    Given I sort grid "[2]" by column "Received Date"
    Given I sort grid "[2]" by column "Received Date"
    Given I sort grid "[2]" by column "Due Date"
    Given I sort grid "[2]" by column "Due Date"
    Given I sort grid "[2]" by column "Status"
    Given I sort grid "[2]" by column "Status"
    Given I sort grid "[2]" by column "Request Owner"
    Given I sort grid "[2]" by column "Request Owner"
    Given I wait for "5" seconds
    
    #Remove the row from the newly linked requests grid
    #Given I click on grid "[2]" column "[10]" row "[2]"
    #Given I wait for "10" seconds
    Given I click on grid "[2]" column "[10]" row "[1]"
    Given I wait for "5" seconds
    
   #Search for required request id, request type and request owner
Given I populate field "Request ID" with "$$$RequestID$$$"
Given I wait for "2" seconds
Given I populate field "Request Type" with "$$$RequestType(s)$$$"
Given I wait for "2" seconds
Given I populate field "Request Owner" with "$$$CSAUSER1$$$"
Given I wait for "5" seconds

#Click on link request
Given I click on grid "[1]" column "[10]" row "[1]"
Given I wait for "5" seconds

#Verfiy that cancel buttion is present and then click on complete button to submit
Given I verify button "$$$Cancel$$$" is present
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
  
 #Navigate to summary dashboard and verify the Request details and functional team details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 
 #Navigate to Emails dashboard and verify
 Given I click on link "Linked Request(s)"
  Given I wait for "6" seconds
  Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$RequestID$$$"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Last Updated On"
    Given I sort grid "[1]" by column "Last Updated On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Last Updated By"
    Given I sort grid "[1]" by column "Last Updated By"
    Given I wait for "4" seconds
     Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "4" seconds
    
    #Logout and then close the browser
    Given I logout
    Given I tear down
     