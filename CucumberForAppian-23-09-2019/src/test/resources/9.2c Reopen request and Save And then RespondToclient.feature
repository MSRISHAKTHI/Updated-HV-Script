@9.2cReopenAndSaveRequestAndthenRespondToclient
Feature: Reopen and Save the request
Background: Login to LH Test environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$CsaUser$$$"

 Scenario: Reopen the request and IR with Functionalteam and SAve
    #I open Provide Request Information form and Initiate a request
    Given I open "$$$CSUrl$$$"
		Given I wait for "8" seconds 
		Given I click on site page "$$$Records$$$"
		Given I wait for "10" seconds
		Given I clear field "Select Filter Set(s)"
		Given I wait for "5" seconds
	 #Given I populate field "Search" with "$$$RequestID$$$"
   Given I wait for "5" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "5" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "5" seconds
		
		#I navigate to Reopen request related action
		Given I wait for "5" seconds
		Given I click on grid "[1]" column "[3]" row "[1]"
		Given I wait for "10" seconds
		Given I click on link "Related Actions"
		Given I wait for "10" seconds
		Given I click on link "Reopen Request"
		Given I wait for "40" seconds
		
		#I edit the Request details
		Given I wait for "5" seconds
		Given I populate field "Request Due Date" with "$$$Duedate$$$"
		Given I click on radio option "$$$Priority1$$$"
		Given I wait for "7" seconds
		#Given I click on checkbox option "[1]"
		Given I wait for "5" seconds
		Given I clear field "Issue Description"
		Given I wait for "5" seconds
		Given I populate field "Issue Description" with "$$$IssueDescription1$$$"
		Given I wait for "5" seconds
		Given I clear field "Request Type(s)" 
		Given I wait for "8" seconds
		Given I populate field "Request Type(s)" with "$$$RequestType(s)1$$$"
		Given I wait for "8" seconds
		Given I clear field "Description" 
		Given I populate field "Description" with "$$$Description1$$$" 
		Given I wait for "5" seconds  
		#Given I clear field "Comments"
		Given I populate field type "PARAGRAPH" named "[3]" with "$$$Comments1$$$" 
		Given I wait for "5" seconds
		
		#I edit the Client Information
		Given I click on link "Click here to search for Client Institution"
		Given I populate picker field "Name" with partially matching suggestions for "$$$Name1$$$"
		Given I wait for "8" seconds
		Given I click on grid "Search Result(s)" column "Name[1]" row "[1]"
		Given I wait for "8" seconds
		Given I click on link "$$$SearchInvestorLink1$$$" 
		Given I wait for "8" seconds
		Given I populate picker field "Name" with partially matching suggestions for "$$$ReqInvName1$$$"
		Given I wait for "7" seconds
		Given I select grid "Search Result(s)" row "[2]"
		Given I wait for "8" seconds
		Given I click on link "$$$AddInvestor$$$"
		Given I wait for "5" seconds
		Given I populate grid "[1]" column "[3]" row "[1]" with "[2]" 
		Given I wait for "5" seconds
		
		#I verify Request fulfillment details grid
		 Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam3$$$" 
		 Given I wait for "5" seconds
		 Given I verify grid "[2]" column "[11]" row "[1]" contains "$$$FStatus7$$$" 
		 Given I click on grid "[2]" column "[12]" row "[1]"
		 Given I wait for "5" seconds
		 Given I verify grid "[3]" column "[1]" row "[1]" contains "$$$AssignTaskOwner$$$"
		 Given I wait for "5" seconds 
		 Given I verify grid "[3]" column "[8]" row "[1]" contains "Canceled"
		 Given I click on link "Close[2]"
		 Given I wait for "5" seconds
		 Given I toggle box "Request Fulfillment Details" visibility
		 Given I wait for "10" seconds
		 Given I toggle box "Client Information" visibility
		 Given I wait for "10" seconds
		
		#Edit Functional teams and Submit
		Given I click on checkbox option "[2]"
		 Given I wait for "10" seconds
		Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam1$$$"
		 Given I wait for "5" seconds
		Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam1$$$"
		Given I wait for "5" seconds   
		Given I populate grid "[1]" column "[3]" row "[1]" with partially matching picker field suggestions for "$$$Duedate$$$"
		 Given I wait for "5" seconds
		Given I populate grid "[1]" column "[4]" row "[1]" with partially matching picker field suggestions for "$$$FTComments$$$"
		Given I wait for "4" seconds
		Given I click on link "Add Functional Team"
		Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "$$$FunctionalTeam2$$$"
		 Given I wait for "5" seconds
		Given I populate grid "[1]" column "[2]" row "[2]" with partially matching picker field suggestions for "$$$FunctionalTeam2$$$"
		Given I wait for "5" seconds   
		Given I populate grid "[1]" column "[3]" row "[2]" with partially matching picker field suggestions for "$$$Duedate$$$"
		 Given I wait for "5" seconds
		Given I populate grid "[1]" column "[4]" row "[2]" with partially matching picker field suggestions for "$$$FTComments$$$"
		Given I wait for "4" seconds
		Given I toggle box "Request Fulfillment Details" visibility
		 Given I wait for "5" seconds
		 
		 #I Fill the details in the Recurring Information section
		    Given I click on checkbox option "[3]"
		    And I wait for "5" seconds
		    Given I click on radio option "Weekly"
		    And I wait for "5" seconds
		    Given I click on checkbox option "Monday"
		    Given I populate field type "TEXT" named "Lead Time" with "$$$LeadTime$$$"
		    Given I wait for "5" seconds
		    Given I populate field "Duration" with "$$$Duration$$$"
		    Given I wait for "8" seconds
				Given I click on button "$$$Save$$$"
				Then I wait for "8" seconds
				
				#I verify saved task is available in tasks grid
				 Given I click on site page "$$$Tasks$$$"
				 Given I wait for "8" seconds
#				 Given I populate field "Search" with "$$$RequestID$$$"
#				 Given I wait for "8" seconds
				 Given I sort grid "[1]" by column "Assigned On" 
			   Given I wait for "4" seconds
			   Given I sort grid "[1]" by column "Assigned On" 
			   Given I wait for "4" seconds
			   Given I click on grid "[1]" column "[3]" row "[1]"
			   Given I wait for "4" seconds
			   Given I verify field "Description" contains "$$$Description1$$$"
			   Given I wait for "4" seconds
			   When I click on button "$$$RespondToClient$$$"
			   When I wait for "4" seconds
			   When I click on button "$$$confButtonYes$$$"
			   When I wait for "4" seconds
			 
				 #I respond to client  
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
	   Given I populate field type "PARAGRAPH" named "[1]" with "$$$EmailBody$$$"
	   Given I wait for "5" seconds 
	   Given I clear field "Add Attachments"
	   Given I wait for "5" seconds 
	   When I populate field type "FILE_UPLOAD" named "Add Attachments" with "$$$docPath$$$"
	   When I wait for "5" seconds
	   When I populate grid "[1]" column "[1]" row "[1]" with "$$$RenamingAttachmentName$$$"
	   When I wait for "5" seconds
	   Then I click on button "$$$SEND$$$"
	   When I wait for "2" seconds
	   Then I click on button "$$$confButtonYes$$$"
    Then I wait for "10" seconds
    
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
		Given I verify grid "[1]" column "[10]" row "[1]" contains "$$$Status2$$$"
		Given I wait for "5" seconds
		Given I click on grid "[1]" column "[3]" row "[1}"
		Given I wait for "4" seconds
		  
		  #Navigate to summary dashboard and verify the Request details and functional team details
		 When I click on link "Summary"
		 Given I wait for "5" seconds
		 Given I verify field "Priority" contains "$$$Priority1$$$"
		 Given I wait for "5" seconds
		 Given I verify field "Request Type(s)" contains "$$$RequestType(s)1$$$"
		 Given I wait for "5" seconds
		 Given I verify field "Description" contains "$$$Description1$$$"
		 Given I wait for "5" seconds
	 	 Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$FunctionalTeam1$$$" 
		 Given I wait for "8" seconds
		 
		   #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
		 Given I click on link "Active Tasks"
		 Given I wait for "10" seconds  
		 Given I sort grid "[1]" by column "Assigned On"
		 Given I wait for "4" seconds
		 Given I sort grid "[1]" by column "Assigned On"
		 Given I wait for "4" seconds
		 Given I verify grid "[1]" column "[1]" row "[1]" contains "$$$InitiateRequest$$$"
		  Given I wait for "3" seconds
		  Given I verify grid "[1]" column "[4]" row "[1]" contains "$$$CsaGroup$$$"
		  Given I wait for "5" seconds
		  Given I logout
		  Given I tear down