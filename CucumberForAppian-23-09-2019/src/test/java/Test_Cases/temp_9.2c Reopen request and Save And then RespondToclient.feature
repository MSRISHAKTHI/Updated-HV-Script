@9.2cReopenAndSaveRequestAndthenRespondToclient
Feature: Reopen and Save the request
Background: Login to LH Test environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"

 Scenario: Reopen the request and IR with Functionalteam and SAve
    #I open Provide Request Information form and Initiate a request
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
		Given I wait for "8" seconds 
		Given I click on site page "CLIENT SERVICE REQUESTS"
		Given I wait for "10" seconds
		Given I clear field "Select Filter Set(s)"
		Given I wait for "5" seconds
	 #Given I populate field "Search" with "8642"
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
		Given I populate field "Request Due Date" with "10/04/2019"
		Given I click on radio option "High"
		Given I wait for "7" seconds
		#Given I click on checkbox option "[1]"
		Given I wait for "5" seconds
		Given I clear field "Issue Description"
		Given I wait for "5" seconds
		Given I populate field "Issue Description" with "Edit Issue Description"
		Given I wait for "5" seconds
		Given I clear field "Request Type(s)" 
		Given I wait for "8" seconds
		Given I populate field "Request Type(s)" with "Capital Calls"
		Given I wait for "8" seconds
		Given I clear field "Description" 
		Given I populate field "Description" with "Edit Description" 
		Given I wait for "5" seconds  
		#Given I clear field "Comments"
		Given I populate field type "PARAGRAPH" named "[3]" with "Comments" 
		Given I wait for "5" seconds
		
		#I edit the Client Information
		Given I click on link "Click here to search for Client Institution"
		Given I populate picker field "Name" with partially matching suggestions for "sec"
		Given I wait for "8" seconds
		Given I click on grid "Search Result(s)" column "Name[1]" row "[1]"
		Given I wait for "8" seconds
		Given I click on link "Search Investor(s) for Woori Investment & Securities" 
		Given I wait for "8" seconds
		Given I populate picker field "Name" with partially matching suggestions for "aber"
		Given I wait for "7" seconds
		Given I select grid "Search Result(s)" row "[2]"
		Given I wait for "8" seconds
		Given I click on link "Add Selected Investor(s)"
		Given I wait for "5" seconds
		Given I populate grid "[1]" column "[3]" row "[1]" with "[2]" 
		Given I wait for "5" seconds
		
		#I verify Request fulfillment details grid
		 Given I verify grid "[2]" column "[1]" row "[1]" contains "Accounting" 
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
		
		#Edit Functional teams and Submit
		Given I click on checkbox option "[2]"
		 Given I wait for "10" seconds
		Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "Compliance"
		 Given I wait for "5" seconds
		Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "Compliance"
		Given I wait for "5" seconds   
		Given I populate grid "[1]" column "[3]" row "[1]" with partially matching picker field suggestions for "10/04/2019"
		 Given I wait for "5" seconds
		Given I populate grid "[1]" column "[4]" row "[1]" with partially matching picker field suggestions for "Test"
		Given I wait for "4" seconds
		Given I click on link "Add Functional Team"
		Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "Tax"
		 Given I wait for "5" seconds
		Given I populate grid "[1]" column "[2]" row "[2]" with partially matching picker field suggestions for "Tax"
		Given I wait for "5" seconds   
		Given I populate grid "[1]" column "[3]" row "[2]" with partially matching picker field suggestions for "10/04/2019"
		 Given I wait for "5" seconds
		Given I populate grid "[1]" column "[4]" row "[2]" with partially matching picker field suggestions for "Test"
		Given I wait for "4" seconds
		Given I toggle box "Request Fulfillment Details" visibility
		 Given I wait for "5" seconds
		 
		 #I Fill the details in the Recurring Information section
		    Given I click on checkbox option "[3]"
		    And I wait for "5" seconds
		    Given I click on radio option "Weekly"
		    And I wait for "5" seconds
		    Given I click on checkbox option "Monday"
		    Given I populate field type "TEXT" named "Lead Time" with "1"
		    Given I wait for "5" seconds
		    Given I populate field "Duration" with "day(s)"
		    Given I wait for "8" seconds
				Given I click on button "SAVE"
				Then I wait for "8" seconds
				
				#I verify saved task is available in tasks grid
				 Given I click on site page "TASKS"
				 Given I wait for "8" seconds
#				 Given I populate field "Search" with "8642"
#				 Given I wait for "8" seconds
				 Given I sort grid "[1]" by column "Assigned On" 
			   Given I wait for "4" seconds
			   Given I sort grid "[1]" by column "Assigned On" 
			   Given I wait for "4" seconds
			   Given I click on grid "[1]" column "[3]" row "[1]"
			   Given I wait for "4" seconds
			   Given I verify field "Description" contains "Edit Description"
			   Given I wait for "4" seconds
			   When I click on button "RESPOND TO CLIENT"
			   When I wait for "4" seconds
			   When I click on button "Yes"
			   When I wait for "4" seconds
			 
				 #I respond to client  
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
	   Given I clear field "Add Attachments"
	   Given I wait for "5" seconds 
	   When I populate field type "FILE_UPLOAD" named "Add Attachments" with "C:\Users\srishakthim\Pictures\Warning.png"
	   When I wait for "5" seconds
	   When I populate grid "[1]" column "[1]" row "[1]" with "Respond related document"
	   When I wait for "5" seconds
	   Then I click on button "SEND"
	   When I wait for "2" seconds
	   Then I click on button "Yes"
    Then I wait for "10" seconds
    
		#Verify the Status of Request in Client Service Records
		Given I click on site page "CLIENT SERVICE REQUESTS"
		Given I wait for "5" seconds
		Given I clear field "Select Filter Set(s)"
		Given I wait for "5" seconds
		#Given I populate field "Search" with "8642"
    #Given I wait for "5" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "5" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "5" seconds
		Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response"
		Given I wait for "5" seconds
		Given I click on grid "[1]" column "[3]" row "[1}"
		Given I wait for "4" seconds
		  
		  #Navigate to summary dashboard and verify the Request details and functional team details
		 When I click on link "Summary"
		 Given I wait for "5" seconds
		 Given I verify field "Priority" contains "High"
		 Given I wait for "5" seconds
		 Given I verify field "Request Type(s)" contains "Capital Calls"
		 Given I wait for "5" seconds
		 Given I verify field "Description" contains "Edit Description"
		 Given I wait for "5" seconds
	 	 Given I verify grid "[2]" column "[1]" row "[1]" contains "Compliance" 
		 Given I wait for "8" seconds
		 
		   #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
		 Given I click on link "Active Tasks"
		 Given I wait for "10" seconds  
		 Given I sort grid "[1]" by column "Assigned On"
		 Given I wait for "4" seconds
		 Given I sort grid "[1]" by column "Assigned On"
		 Given I wait for "4" seconds
		 Given I verify grid "[1]" column "[1]" row "[1]" contains "Initial Request Review"
		  Given I wait for "3" seconds
		  Given I verify grid "[1]" column "[4]" row "[1]" contains "GCS Client Service Associate"
		  Given I wait for "5" seconds
		  Given I logout
		  Given I tear down

