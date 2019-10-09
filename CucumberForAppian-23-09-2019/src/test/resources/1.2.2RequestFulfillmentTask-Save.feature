@1.2.2RequestFulfillmentTask-Save
Feature: Save the Request Fulfillment Task
 Background: Login to LH Test environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$complianceUser$$$"
 
    
Scenario: Save the Request Fulfillment Task
    Given I open "$$$CSUrl$$$"
    Given I wait for "20" seconds
    #When I click on site page "$$$Tasks$$$" 
    Given I clear field "Select Filter Set(s)"
        Given I wait for "10" seconds  
    Given I click on button "MY GROUP TASKS"
    Given I wait for "5" seconds   
   Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "8" seconds
   Given I click on button "$$$Accept$$$"
   Given I wait for "20" seconds
   
 #Navigate to Request Details tab and verify the Request details and functional team details
 When I click on button "REQUEST DETAILS"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
  Given I wait for "6" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$"
Given I wait for "4" seconds
Given I verify grid "[2]" column "[3]" row "[1]" contains "$$$FTComments$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[6]" row "[1]" contains "$$$Duedate$$$"
 Given I wait for "3" seconds
 Given I verify grid "[2]" column "[11]" row "[1]" contains "$$$FStatus1$$$"
 Given I wait for "5" seconds
 Given I click on grid "[2]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
 Given I click on link "Close"
 Given I wait for "6" seconds 
 
  #Add details and Save
Given I click on button "PROVIDE COMMENTS"
Given I wait for "4" seconds
Given I populate field type "PARAGRAPH" named "[1]" with "$$$RFComments$$$"
Given I wait for "5" seconds
Given I populate field type "FILE_UPLOAD" named "[1]" with "$$$docPath$$$"
Given I wait for "7" seconds
When I click on button "$$$Save$$$"
Given I wait for "5" seconds

#Pick up the same task from the task page and observe
    Given I click on site page "$$$Tasks$$$"
    Given I wait for "20" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "10" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "6" seconds
    When I verify text "$$$RFComments$$$" is present
    Then I click on button "$$$Save$$$"
Given I wait for "5" seconds

#Navigate to Records and Check for Fullfilment details dashboard
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
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "10" seconds
   
   #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
  Given I click on link "Active Tasks"
Given I wait for "5" seconds  
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$RequestFulfillment$$$"
  Given I wait for "3" seconds
   Given I verify grid "[2]" column "[4]" row "[1]" contains "$$$InitialAssignmantFT1$$$"
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
Then I logout
    Then I tear down
   
            