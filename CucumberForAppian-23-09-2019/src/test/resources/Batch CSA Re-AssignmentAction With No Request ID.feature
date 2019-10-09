@BatchCSAReassignment
Feature: Using this action, user can update the Request Owner and reassigned the task

  Background: Login to Appian environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$CsaUser$$$"
  
   Scenario: Using this action, user can update the Request Owner and reassigned the task
  
    Given I open "$$$CSUrl$$$"
		Given I wait for "8" seconds
		
		#Navigate to Client Service Requests Records
		Given I click on site page "CLIENT SERVICE REQUESTS"
	  Given I wait for "5" seconds
		Given I click on link "Batch CSA Re-Assignment"
		Given I wait for "5" seconds
		Given I click on grid "[1]" navigation "next"
		Given I wait for "5" seconds
    Given I click on grid "[1]" navigation "last"
    Given I wait for "5" seconds
    Given I click on grid "[1]" navigation "previous"
    Given I wait for "5" seconds
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
    
        
   #Search for required request id, request type and request owner
		Given I populate field "Request ID" with "$$$RequestID$$$"
		Given I wait for "2" seconds
		Given I populate field "Request Type" with "$$$RequestType(s)1$$$"
		Given I wait for "2" seconds
		Given I populate field "Request Owner" with "$$$CSAUSER1$$$"
		Given I wait for "5" seconds
		
		#Select any one request to update Client Service Associate
		Given I select grid "[1]" row "[1]"
		Given I wait for "5" seconds
		
		#Verify and Update Request(s) with New CSA
		 Given I verify grid "[2]" column "[1]" row "[1]" contains "$$$RequestID$$$"
		 Given I wait for "5" seconds
		 Given I verify grid "[2]" column "[2]" row "[1]" contains "$$$CSAUSER1$$$"
		 Given I wait for "5" seconds
		Given I populate grid "[2]" column "[3]" row "[1]" with partially matching picker field suggestions for "user 2"
		Given I wait for "5" seconds
		
		#Select one more request to update Client Service Associate and update new CSA
		Given I click on button "CLEAR FILTERS"
		Given I wait for "2" seconds
		Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Id"
		Given I select grid "[1]" row "[1]"
		Given I wait for "5" seconds
		Given I select grid "[1]" row "[2]"
		Given I wait for "5" seconds
		Given I populate grid "[2]" column "[3]" row "[1]" with partially matching picker field suggestions for "user 2"
		Given I wait for "5" seconds
		
		#Check with Clear all CSA 
		Given I click on link "Clear All CSA"
		Given I wait for "5" seconds
		
		#Again Pick the new CSA for request ID's
		Given I populate grid "[2]" column "[3]" row "[1]" with partially matching picker field suggestions for "user 2"
		Given I wait for "5" seconds
		#Copy the selected csa for all other requests
		Given I click on grid "[2]" column "[4]" row "[1]"
		
		#Check the delete link of selected row
		Given I click on grid "[2]" column "[5]" row "[1]"
		
		#Verify the Cancel Button and Complete Button
		Given I verify button "$$$Cancel$$$" is present
		Given I click on button "$$$Complete$$$"
		Then I wait for "3" seconds
		Then I click on button "$$$confButtonYes$$$"
		
		#Then Verify the Updated Request Owner for selected Request ID
		Given I wait for "5" seconds
		Given I click on link "Batch CSA Re-Assignment"
		Given I wait for "5" seconds
		Given I populate field "Request ID" with "$$$RequestID$$$"
		Given I wait for "2" seconds
		Given I verify grid "[1]" column "[8]" row "[1]" contains "$$$RqOwner$$$"
		Then I wait for "5" seconds
		Then I logout
		Then I tear down
		
		
    