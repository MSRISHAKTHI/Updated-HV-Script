@1.6_IR_And_Cancel
Feature: Initiate the request, Cancel it and verify it in the records

 Background: Login to LH Test environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$CsaUser$$$"

 Scenario: IR with Functionalteam not Accounting and Requestor Type Not Investor and Cancel it
    #I open Provide Request Information form and Initiate a request
    Given I open "$$$CSUrl$$$"
    Given I wait for "10" seconds
    When I click on site page "$$$Tasks$$$"  
    Given I click on link "Initiate Request" 
    Given I wait for "8" seconds   
    
     #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "[2]" with "$$$CommentsValue$$$" 
    Given I wait for "5" seconds
    Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
    Given I wait for "8" seconds
    
    #I Fill the details in the Request Information section
    #Given I click on radio option "High"
    #Given I wait for "3" seconds
    Given I click on checkbox option "[1]" 
    Given I wait for "3" seconds
    Given I populate field "Issue Description" with "$$$IssueDescription$$$"
    Given I wait for "3" seconds
    Given I click on link "Click here to search for Requestor Institution" 
    Given I wait for "3" seconds
    Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInsName$$$" 
    Given I wait for "3" seconds
    Given I click on grid "Search Result(s)" column "Name" row "1"
    Then I click on button "Yes"
    And I wait for "5" seconds
    Given I populate field "Request Type(s)" with "$$$RequestType(s)$$$"
    Given I wait for "3" seconds
    Given I populate field "Description" with "$$$Description$$$" 
    Given I wait for "5" seconds   
    
    #I verify the functionality of all the buttons
    And I click on button "$$$CancelRequest$$$"
    Given I wait for "3" seconds
    And I click on button "$$$confButtonYes$$$"
    And I wait for "5" seconds
    
    #I verify the status in the Records
    Given I click on site page "$$$Records$$$"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status5$$$"
    Given I wait for "5" seconds
    Then I logout
    Then I tear down