@ReassignFunctionalTeamTaskBacktoGroup
Feature: Submit the task assigned to Functional Team-Treasury 

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "complianceUser1"
  
   Scenario: Accept the task assigned to Functional Team and then check the reassign functionality
  
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "20" seconds
   Given I clear field "Select Filter Set(s)"
   Given I wait for "20" seconds  
   #Given I populate field "Search" with "8642"
   #Given I wait for "10" seconds
   
   #Navigate to Tasks and click on Functional Team Task
   Given I click on button "MY GROUP TASKS"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds
   
   #Accept the task and Navigate between the tabs available in task and click on links available under Emails
   Given I click on button "ACCEPT"
   Given I wait for "4" seconds
   
   #Enter the Reassign Comments and reassign to group
   Given I populate field type "PARAGRAPH" named "[1]" with "Reassigning Comments -$$$dateTime$$$"
   Given I wait for "5" seconds
   When I click on button "RE-ASSIGN TO GROUP"
   When I click on button "Yes"
   Then I wait for "5" seconds
   
   #Again Reassiging to Perticular user
   Given I click on button "MY GROUP TASKS"
   Given I wait for "10" seconds
   Given I clear field "Select Filter Set(s)"
   Given I wait for "20" seconds  
   #Given I populate field "Search" with "8642"
   #Given I wait for "10" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Assigned On" 
   Given I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "5" seconds
   Given I click on button "ACCEPT"
   Given I wait for "15" seconds
   When I populate picker field "[2]" with partially matching suggestions for "Maggie Byrne"
   When I wait for "15" seconds
   When I click on button "$$$ReassigntoUser$$$"
   When I click on button "Yes"
   Then I wait for "3" seconds
   
      #Verify the Status of Request in Client Service Records
Given I wait for "10" seconds
   Given I click on site page "CLIENT SERVICE REQUESTS"
   Given I wait for "20" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "15" seconds
#Given I populate field "Search" with "8642"
#Given I wait for "15" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
   Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response"
   When I wait for "5" seconds
   Given I click on grid "[1]" column "[3]" row "[1]"
   When I wait for "10" seconds
   
   # Observe in Audit History
		 Given I click on link "Audit History"
		 Given I wait for "4" seconds
		 Given I click on button "TASK REASSIGNMENT HISTORY"
		 Given I wait for "5" seconds
		 Given I sort grid "[1]" by column "Reassigned On"
		 Given I wait for "5" seconds
		 Given I sort grid "[1]" by column "Reassigned On"
		 Given I wait for "5" seconds
		 Given I verify grid "[1]" column "[1]" row "[2]" contains "Request Fulfillment"
		 Given I wait for "3" seconds
		 Given I verify grid "[1]" column "[6]" row "[2]" contains "Request Fulfillment task has been returned to GCS Compliance"
		 Given I wait for "3" seconds
		 Given I verify grid "[1]" column "[1]" row "[1]" contains "Request Fulfillment"
		 Given I wait for "3" seconds
		 Given I verify grid "[1]" column "[6]" row "[1]" contains "Request Fulfillment task has been reassigned to Maggie Byrne"
		 Given I wait for "3" seconds
		 Given I sort grid "[1]" by column "Original Assignee(s)"
		 Given I wait for "5" seconds
		 Given I sort grid "[1]" by column "Reassigned To"
		 Given I wait for "5" seconds
		 Given I sort grid "[1]" by column "Reassigned By"
		 Given I wait for "5" seconds
		 Given I sort grid "[1]" by column "Comments"
		 Given I wait for "10" seconds
	
	#Verify the link filters available in- Reassigned On
	   Given I populate picker field "Reassigned By" with partially matching suggestions for "Compliance"
		 Given I wait for "10" seconds
		 Given I populate picker field "Original Assignee" with partially matching suggestions for "gcs comp"
		 Given I wait for "5" seconds
	   Given I click on link "Today"
	   Given I wait for "3" seconds
	   Given I click on link "This Week"
	   Given I wait for "3" seconds
	   Given I click on link "Last Week"
	   Given I wait for "3" seconds
	   Given I click on link "Older than 2 Weeks"
	   Then I wait for "3" seconds
	   Then I click on button "CLEAR FILTERS"
	   Then I wait for "3" seconds
     Then I logout
     Then I tear down
  
