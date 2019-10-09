@AttachDocuments
Feature: Attach Documents to Client Service Request using Related Action-Attach Documents

  Background: Login to Appian environment
    Given I setup with "$$$Browser$$$" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$csaUser1$$$"
  
   Scenario: Using Add Notes Related Action, Attach Documents to Client Service Request
  
    Given I open "$$$URL_ClientService$$$"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I populate field "Search" with "8642"
    Given I wait for "5" seconds 
	   Given I populate field "Type" with "$$$RequestType$$$"
	   Given I wait for "5" seconds
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
    | $$$DOCUploadpath1$$$ |
    | C:\Users\swetar.VURAM.000\Documents\TestDocCheck4.doc |
    When I wait for "5" seconds
    Then I verify button "CANCEL" is present
    Then I click on button "SUBMIT"
    
    #Navigate to Documents Dashboard to view the attached documents
    Then I click on link "Documents"
    Then I wait for "5" seconds
    
   #Verify the documents and sort the grid
   Given I verify grid "[1]" column "[1]" row "[1]" contains "TestDocCheck4"
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[2]" row "[1]" contains "Task-Related Documents"
   Given I wait for "2" seconds
   Given I verify grid "[1]" column "[1]" row "[2]" contains "C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC"
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
     Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC2.pdf"
     When I wait for "5" seconds
     Then I verify grid "[1]" column "[1]" row "[1]" contains "TestDocCheck4"
	   Then I wait for "5" seconds
	   Then I verify grid "[1]" column "[2]" row "[1]" contains "Task-Related Documents"
	   Then I wait for "2" seconds
	   Then I verify grid "[1]" column "[1]" row "[2]" contains "C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC"
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
	   
 

