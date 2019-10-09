@CheckforConfirmationMessageinIRscreen
Feature: Check for Confirmation Message in IR screen

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
   When I set appian URL to "$$$HVTestUrl$$$"
   And I set appian version to "$$$Appver$$$"
   And I set appian locale to "$$$en_US$$$"
   Then I login with username "$$$CsaUser$$$"
  
   Scenario: Scenario: Check for Confirmation Message in IR screen
   Given I open "$$$CSUrl$$$"
Given I wait for "10" seconds
When I click on site page "$$$Tasks$$$"  
Given I wait for "10" seconds 
Given I click on link "Initiate Request" 
Given I wait for "20" seconds 
   
   #Check the confirmation message in the Initiate Request form
   Given I click on button "$$$CloseRequest$$$"
    Given I wait for "5" seconds
   Given I verify text "The current task will be completed and the request status will be updated to Closed. Would you like to continue?" is present
    Given I wait for "5" seconds
   Given I click on button "$$$confButtonNo$$$"
    Given I wait for "5" seconds
   Given I click on button "$$$RespondToClient$$$"
   Given I wait for "5" seconds
   Given I verify text "The current task will be completed and you will be redirected to prepare response screen. Would you like to continue?" is present
   Given I populate field type "PARAGRAPH" named "[2]" with "$$$CommentsValue$$$" 
Given I wait for "5" seconds
   And I click on button "$$$CancelRequest$$$"
    Given I wait for "3" seconds
    Given I verify text "The current task will be completed and the request status will be updated to Canceled. Would you like to continue?" is present 
   Given I wait for "5" seconds
   
    #I Fill the details in the Functional Team section
 Given I click on checkbox option "[2]" 
 Given I wait for "5" seconds
 Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "$$$FunctionalTeam3$$$"
 Given I wait for "5" seconds
   Given I verify text "Would you like to continue assigning the task(s) to selected functional team(s)?" is present
   Given I wait for "5" seconds
   Then I logout
    Then I tear down
   