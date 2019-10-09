@9.6_AttachDocuments
Feature: Attach Documents to Client Service Request using Related Action-Attach Documents

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
   When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
   And I set appian version to "19.2"
   And I set appian locale to "en_US"
   Then I login with username "csaUser1"
  
   Scenario: Using Attach documnents Related Action, Attach Documents to Client Service Request
  
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)" 
    Given I wait for "2" seconds
    #Given I populate field "Search" with "8642"
    #Given I wait for "5" seconds 
	   Given I sort grid "[1]" by column "Request Id"
	   Given I wait for "5" seconds
	   Given I sort grid "[1]" by column "Request Id"
	   Given I wait for "5" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Attach Documents"
    Given I wait for "2" seconds
    Given I populate field type "FILE_UPLOAD" named "[1]" with 
    | C:\Users\srishakthim\Pictures\Screenshots\Screenshot (8).png |
    | C:\Users\srishakthim\Pictures\Screenshots\Screenshot (9).png |
    When I wait for "5" seconds
    Then I verify button "CANCEL" is present
    Then I click on button "SUBMIT"
    
    #Navigate to Documents Dashboard to view the attached documents
    Then I click on link "Documents"
    Then I wait for "5" seconds
    
   #Verify the documents and sort the grid
   Given I verify grid "[1]" column "[1]" row "[1]" contains "Screenshot (8)"
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[2]" row "[1]" contains "Task-Related Documents"
   Given I wait for "2" seconds
   Given I verify grid "[1]" column "[1]" row "[2]" contains "Screenshot (9)"
   Given I wait for "2" seconds
   Given I verify grid "[1]" column "[2]" row "[2]" contains "Task-Related Documents"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Documents"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Category"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Uploaded By"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Uploaded On"
   Given I wait for "5" seconds
   
   #Verify the document uploaded grid in Related actions and 
     Given I click on link "Related Actions"
     Given I wait for "2" seconds
     Given I click on record related action "Attach Documents"
     Given I wait for "2" seconds
     Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
     When I wait for "5" seconds
     Then I verify grid "[1]" column "[1]" row "[1]" contains "Screenshot (8)"
	   Then I wait for "5" seconds
	   Then I verify grid "[1]" column "[2]" row "[1]" contains "Task-Related Documents"
	   Then I wait for "2" seconds
	   Then I verify grid "[1]" column "[1]" row "[2]" contains "Screenshot (9)"
	   Then I wait for "2" seconds
	   Then I verify grid "[1]" column "[2]" row "[2]" contains "Task-Related Documents"
	   Then I wait for "2" seconds
	   Then I sort grid "[1]" by column "Documents"
	   Then I wait for "2" seconds
	   Then I sort grid "[1]" by column "Category"
	   Then I wait for "5" seconds
	   Then I sort grid "[1]" by column "Uploaded By"
	   Then I wait for "5" seconds
	   Then I sort grid "[1]" by column "Uploaded On"
	   Then I wait for "5" seconds
	   Then I click on button "CANCEL"
	   Then I wait for "3" seconds
	   Then I click on button "YES"
	   Then I wait for "3" seconds
	   Then I click on link "Documents"
	   Then I wait for "5" seconds
	   
	   #Set the filter available in documents Dashboard 
	   Then I populate field "[2]" with "Task-Related Documents"
	   Then I wait for "5" seconds
	   Then I click on button "CLEAR"
	   Then I wait for "5" seconds
	   Then I logout
	   Then I tear down
	   
	   
 

