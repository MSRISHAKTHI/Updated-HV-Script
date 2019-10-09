@9.3bReLinkthenUnlinkRequest
Feature: Link and Unlink Request

  Background: Login to Appian environment
		Given I setup with "$$$CHROME$$$" browser
		When I set appian URL to "$$$HVTestUrl$$$"
		And I set appian version to "$$$Appver$$$"
		And I set appian locale to "$$$en_US$$$"
		Then I login with username "$$$CsaUser$$$"
    Given I set screenshot path to "$$$Link/UnlinkValidationScreenshot$$$"
    Given I set take error screenshots to "true"
    
    Scenario: Relink request   
    #Open client service site  
    Given I wait for "10" seconds
    Given I open "$$$CSUrl$$$"
    Given I wait for "15" seconds
    
    #Click on client service request site page
    Given I click on site page "$$$Records$$$"
    Given I wait for "20" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "10" seconds
    #Given I populate field "Search" with "$$$RequestID$$$"
       
   #Click on the record
		Given I wait for "5" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "4" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "6" seconds
		    
    #Select the record to link the request
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "5" seconds
  
    #Navigate to link/unlink request related action, then unlink the linked request
    Given I click on link "Related Actions"
    Given I wait for "5" seconds
    Given I click on record related action "Link/Unlink Requests"
    Given I wait for "10" seconds
    Given I click on grid "[1]" column "[4]" row "[1]"
    Given I wait for "5" seconds    
    
    #Navigate to unlinked requests grid, re link the unlinked requests
    Given I wait for "10" seconds
    Given I click on grid "[2]" column "[4]" row "[1]"
    Given I wait for "10" seconds
    Given I click on button "$$$Complete$$$"
    Given I wait for "5" seconds
    Given I set take error screenshots to "true"
    Given I wait for "5" seconds
    Given I take screenshot "RELINK Request"
    
    #Navigate to link/unlink request related action, then unlink the linked request
    Given I wait for "10" seconds
    Given I click on grid "[1]" column "[4]" row "[1]"
    Given I wait for "5" seconds
  
    #Verfiy that cancel buttion is present and then click on complete button to submit
    Given I verify button "$$$Cancel$$$" is present
    Given I wait for "5" seconds
    Given I click on button "$$$Complete$$$"
    Given I wait for "5" seconds
    Given I click on button "$$$confButtonYes$$$"
    Given I wait for "10" seconds
    
 #I verify the status in Records
    Given I click on site page "$$$Records$$$"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "6" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
   
   #Navigate to summary dashboard and verify the Request details and functional team details
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds   
   Given I verify text "Linked Request(s)" is present
   Given I wait for "5" seconds
    
    #Logout and then close the browser
    Given I logout
    Given I tear down
    
    
      