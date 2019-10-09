@1.8IRWithReqTypeInvestorAndRespondtoClient

Feature: Initiate the request and respond to client without adding functional team

Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"

Scenario:  Initiate the request and respond to client without adding functional team
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
     Given I wait for "5" seconds   
    
    #I verify the functionality of all the buttons
     Given I click on button "$$$RespondToClient$$$"
 Given I wait for "5" seconds
 And I click on button "$$$confButtonYes$$$"
 And I wait for "10" seconds
    
 #Send Response to client by entering To Recipients and CC Recipients and Email Subject and Body
 Given I wait for "5" seconds
 Given I click on checkbox option "High"
 Given I wait for "5" seconds
 Given I toggle box "Email[2]" visibility
 Given I wait for "5" seconds
 Given I populate field type "TEXT" named "[1]" with "$$$TO$$$"
 Given I wait for "5" seconds
 Given I populate field type "TEXT" named "[2]" with "$$$CC$$$"
 Given I wait for "5" seconds
 Given I populate field type "TEXT" named "[3]" with "$$$EmailSubject$$$"
 Given I wait for "5" seconds
 Given I populate field type "PARAGRAPH" named "[1]" with "$$$EmailBodyIR$$$"
 Given I wait for "5" seconds
 When I populate field type "FILE_UPLOAD" named "Add Attachments" with "$$$docPath$$$"
 Given I wait for "8" seconds
 #Given I populate picker field "[1]" with partially matching suggestions for "$$$HVUser1$$$"
 #Given I wait for "5" seconds
 When I populate grid "[1]" column "[1]" row "[1]" with "$$$RenamingAttachmentName$$$"
 When I wait for "5" seconds
 And I click on button "$$$SEND$$$" 
      Given I wait for "5" seconds 
 And I click on button "$$$confButtonYes$$$" 
 When I wait for "8" seconds
   
#I verify the status in Records
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
     Given I wait for "5" seconds 
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status3$$$" 
Then I logout
Then I tear down
   