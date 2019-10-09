@1.8IRWithReqTypeInvestorAndSave
Feature: Initiate the request, save it and verify it in the records
Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"

Scenario: Initiate Request with Requestor Type as Investor and Save
  #I open Provide Request Information form and Initiate a request
    Given I open "$$$CSUrl$$$"
    Given I wait for "10" seconds
    Given I click on link "Initiate Request" 
    Given I wait for "8" seconds 
    
    #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "[2]" with "$$$CommentsValue$$$" 
    Given I wait for "5" seconds
    Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
    Given I wait for "10" seconds  
   
    #I Fill the details in the Request Information section
    #Given I click on radio option "$$$Priority$$$"
    #Given I wait for "5" seconds
    Given I click on checkbox option "[1]" 
    Given I wait for "5" seconds
    Given I populate field "Issue Description" with "$$$IssueDescription$$$"
    Given I wait for "5" seconds
    Given I click on link "Click here to search for Requestor Institution" 
    Given I wait for "5" seconds
    Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInsName$$$" 
    Given I wait for "5" seconds
    Given I click on grid "Search Result(s)" column "Name" row "[1]"
    Given I wait for "5" seconds
    Then I click on button "$$$confButtonYes$$$"
    And I wait for "5" seconds
    Given I populate field "Request Type(s)" with "$$$RequestType(s)$$$"
    And I wait for "5" seconds
    Given I populate field "Description" with "$$$Description$$$" 
    Given I wait for "5" seconds    
    
    #I Fill the details in the Client Information section
    Given I populate field "Fund(S)" with "[1]"  
    
    #I verify the functionality of all the buttons
    And I click on button "$$$Save$$$"
    And I wait for "8" seconds
    
    #Pick up the same task from the task page and observe
    Given I click on site page "$$$Tasks$$$"
     Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "4" seconds
    Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
  Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
   Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
    Given I click on button "$$$Save$$$"
    Given I wait for "5" seconds

    #I verify the status in the Records
    Given I click on site page "$$$Records$$$"
    Given I wait for "5" seconds
   Given I clear field "Select Filter Set(s)"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status1$$$"
    Given I wait for "5" seconds
    
    #Navigate to summary dashboard and verify the details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "4" seconds
 When I click on link "Summary"
 Given I wait for "5" seconds
Given I verify field "Priority" contains "$$$Priority$$$"
 Given I wait for "5" seconds
  Given I verify field "Request Type(s)" contains "$$$RequestType(s)$$$"
   Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description$$$"
 Given I wait for "5" seconds
  Given I verify field "Client Name" contains "$$$ClientNameInvestor$$$"
  Given I wait for "5" seconds
 Then I logout
    Then I tear down