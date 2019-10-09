@RespondtoEmail-SaveFunctionality
Feature: Attach Documents to Client Service Request using Related Action-Attach Documents

  Background: Login to Appian environment
    Given I setup with "$$$Browser$$$" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$csaUser1$$$"
  
   Scenario: Using Respond Related Action, User can send out an email
  
    Given I open "$$$URL_ClientService$$$"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I populate field "Search" with "8642"
    Given I wait for "2" seconds
    Given I populate field "Type" with "$$$RequestType$$$"
    Given I wait for "2" seconds
    Given I sort grid "[1]" by column "Request Id" 
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Request Id" 
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Respond"
    Given I wait for "5" seconds
    Given I click on checkbox option "High"
    Given I wait for "5" seconds
    Given I toggle box "Email[2]" visibility
    Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[1]" with "swetar@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[2]" with "prakruthil@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[3]" with "Respond to Client"
   Given I wait for "5" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with "Acknowledge"
   Given I wait for "5" seconds 
   #Given I populate picker field "[1]" with partially matching suggestions for "csa"
   When I populate field type "FILE_UPLOAD" named "Add Attachments" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC2.pdf"
   When I wait for "5" seconds
   When I populate grid "[1]" column "[1]" row "[1]" with "Respond related document"
     
   #Save the Email Draft and check for the saved email rask
   Given I click on radio option "[2]"
   Given I wait for "5" seconds
   Then I click on button "SAVE"
   Then I click on button "Yes"
    Then I wait for "10" seconds
   
   #Navigate to tasks to check the saved task
    Given I click on site page "TASKS"
    Given I clear field "Select Filter Set(s)"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "6" seconds
    When I verify text "Acknowledge" is present
    Then I wait for "6" seconds
    Then I click on button "SEND"
    Then I click on button "Yes"
    Then I wait for "10" seconds
 

