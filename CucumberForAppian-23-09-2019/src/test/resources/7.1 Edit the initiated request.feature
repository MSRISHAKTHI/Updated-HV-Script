@7.1b_EditTheRequestInitiated
Feature: Edit the request Initiated

Background: Login to LH Test environment
Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
Then I login with username "$$$CsaUser$$$"
  
Scenario: Edit the request Initiated
Given I open "$$$CSUrl$$$"
Given I wait for "5" seconds 
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
       
   #Click on the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds

#I navigate to Edit request related action
Given I click on link "Related Actions"
Given I wait for "5" seconds
Given I click on link "Edit Request"
Given I wait for "5" seconds
#Given I click on radio option "$$$Priority1$$$"
#Given I wait for "3" seconds
#Given I click on checkbox option "[1]"
Given I wait for "3" seconds
Given I clear field "Issue Description"
Given I wait for "3" seconds
Given I populate field "Issue Description" with "$$$IssueDescription1$$$"
Given I wait for "3" seconds
Given I clear field "Description" 
Given I populate field "Description" with "$$$Description1$$$" 
Given I wait for "5" seconds 
Given I clear field "Request Due Date"
Given I wait for "5" seconds
Given I populate field "Request Due Date" with "$$$Duedate1$$$"
Given I wait for "3" seconds 
Given I clear field "Comments"
Given I populate field "Comments" with "$$$Comments1$$$" 
Given I wait for "5" seconds
Given I clear field "Request Type(s)" 
Given I wait for "5" seconds
Given I populate field "Request Type(s)" with "$$$RequestType(s)1$$$" 
Given I wait for "5" seconds

#I edit the Client Information
Given I click on link "Click here to search for Client Institution"
Given I wait for "5" seconds
Given I populate picker field "Name" with partially matching suggestions for "$$$Name1$$$"
Given I wait for "3" seconds
Given I click on grid "Search Result(s)" column "Name" row "[1]"
Given I wait for "5" seconds
Given I click on link "$$$SearchInvestorLink1$$$" 
Given I wait for "5" seconds
Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInvName1$$$"
Given I wait for "5" seconds
Given I select grid "Search Result(s)" row "[2]"
Given I wait for "5" seconds
Given I click on link "$$$AddInvestor$$$"
Given I wait for "5" seconds
Given I populate grid "[1]" column "[3]" row "[1]" with "[2]"
Given I wait for "5" seconds 
Given I click on button "$$$UPDATE$$$"
Given I wait for "3" seconds
And I click on button "$$$confButtonYes$$$"
 Given I wait for "10" seconds


#Given I verify the deails in the summary dashboard
Given I click on link "Summary"
 Given I wait for "5" seconds
 #Given I verify field "Priority" contains "$$$Priority1$$$"
 #Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)1$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description1$$$"
  Given I wait for "6" seconds
  Given I verify field "Client Name" contains "$$$ClientName1$$$"
 Given I wait for "5" seconds
 
#Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "Edit Request Information"
 Given I wait for "6" seconds
 Given I verify grid "[1]" column "[9]" row "[1]" contains "$$$Comments1$$$"
 Given I wait for "4" seconds
 Then I logout
 Then I tear down 

  
    
      