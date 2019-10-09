@9.2bReopenAndCloseRequest

Feature: Reopen and Close the request
Background: Login to LH Test environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$CsaUser$$$"

 Scenario: Reopen the request and IR with Functionalteam not Accounting and Requestor Type Not Investor and Submit 
		 #I open Provide Request Information form and Initiate a request
		Given I open "$$$CSUrl$$$"
		Given I wait for "8" seconds 
		Given I click on site page "$$$Records$$$"
		Given I wait for "5" seconds
		Given I clear field "Select Filter Set(s)"
		Given I wait for "5" seconds
		#Given I populate field "Search" with "$$$RequestID$$$"
    #Given I wait for "5" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "5" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "5" seconds
		
		#I navigate to Reopen request related action
		Given I click on grid "[1]" column "[3]" row "[1]"
		Given I wait for "10" seconds
		Given I click on link "Related Actions"
		Given I wait for "10" seconds
		Given I click on record related action "Reopen Request"
		Given I wait for "40" seconds

		#Edit the Request details
		Given I wait for "3" seconds
		Given I populate field "Request Due Date" with "$$$Duedate$$$"
		Given I wait for "3" seconds
		Given I click on radio option "$$$Priority1$$$"
		#Given I click on checkbox option "[1]"
		Given I clear field "Issue Description"
		Given I populate field "Issue Description" with "$$$IssueDescription1$$$"
		Given I wait for "5" seconds
		Given I clear field "Request Type(s)" 
		Given I wait for "8" seconds
		Given I populate field "Request Type(s)" with "$$$RequestType(s)1$$$"
		Given I wait for "8" seconds
		Given I clear field "Description" 
		Given I wait for "3" seconds
		Given I populate field "Description" with "$$$Description1$$$" 
		Given I wait for "5" seconds  
		#Given I clear field "Comments"
		Given I populate field type "PARAGRAPH" named "[3]" with "$$$Comments1$$$" 
		Given I wait for "5" seconds

		#I edit the Client Information
		Given I click on link "Click here to search for Client Institution"
		Given I wait for "5" seconds
		Given I populate picker field "Name" with partially matching suggestions for "$$$Name1$$$"
		Given I wait for "5" seconds
		Given I click on grid "Search Result(s)" column "Name[1]" row "[1]"
		Given I wait for "5" seconds
		Given I click on link "$$$SearchInvestorLink1$$$"
		Given I wait for "5" seconds
		Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInvName1$$$"
		Given I wait for "5" seconds
		Given I select grid "Search Result(s)" row "[2]"
		Given I wait for "3" seconds
		Given I click on link "$$$AddInvestor$$$"
		Given I wait for "5" seconds
		Given I populate grid "[1]" column "[3]" row "[1]" with "[2]"
		Given I wait for "5" seconds

		#I verify Request fulfillment details grid
		 Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$" 
		 Given I wait for "5" seconds
		 Given I verify grid "[2]" column "[11]" row "[1]" contains "Retracted" 
		 Given I click on grid "[2]" column "[12]" row "[1]"
		 Given I wait for "5" seconds
		 Given I verify grid "[3]" column "[1]" row "[1]" contains "Assign Task Owner"
		 Given I wait for "5" seconds 
		 Given I verify grid "[3]" column "[8]" row "[1]" contains "Canceled"
		 Given I click on link "Close[2]"
		 Given I wait for "5" seconds
		 Given I toggle box "Request Fulfillment Details" visibility
		 Given I wait for "10" seconds
		 Given I toggle box "Client Information" visibility
		 Given I wait for "10" seconds
 
    #I close Request
    Given I click on button "$$$CloseRequest$$$"
		When I wait for "3" seconds
		When I click on button "$$$confButtonYes$$$"
		Then I wait for "8" seconds

#Verify the Status of Request in Client Service Records
Given I click on site page "$$$Records$$$"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
#Given I populate field "Search" with "$$$RequestID$$$"
#Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status6$$$"
Given I wait for "5" seconds
Given I click on grid "[1]" column "[3]" row "[1}"
Given I wait for "4" seconds
  
  #Navigate to summary dashboard and verify the Request details and functional team details
 When I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "$$$Priority1$$$"
 #Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "$$$RequestType(s)1$$$"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "$$$Description1$$$"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$" 
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[9]" row "[1]" contains "$$$FStatus7$$$" 
 Given I click on grid "[2]" column "[10]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$AssignTaskOwner$$$"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[8]" row "[1]" contains "$$$Status5$$$"
 Given I click on link "Close[1]"
 Given I wait for "5" seconds
 Given I click on link "Close"
 Given I wait for "5" seconds
  
  # Observe in Audit History
	 Given I click on link "Audit History"
	 Given I wait for "4" seconds
	 Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Received On"
    Given I wait for "4" seconds
		Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$CloseReq$$$"
		Then I logout
		Then I tear down

