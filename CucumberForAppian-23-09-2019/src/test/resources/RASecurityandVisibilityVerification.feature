@SecurityandVisibilityCheckforRelatedActions
Feature: Security and visibility of related actions using functional team member
  Background: Login to Appian environment
    Given I setup with "$$$CHROME$$$" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$complianceUser$$$"
 
    Scenario: Security and visibility of related actions
    
    #Open client service site  
    Given I wait for "10" seconds
    Given I open "$$$CSUrl$$$"
   Given I wait for "20" seconds
    
    #Click on client service request site page
    Given I click on site page "$$$Records$$$"
    Given I wait for "20" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "20" seconds  
    
    #Select the record to navigate inside it
    Given I click on grid "[1]" column "[3]" row "[2]"
    Given I wait for "5" seconds
    
    #Navigate to record nad validate which all the related action are available
    #Given I verify record related action "$$$LINK/UNLINKREQUESTS$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$UpdateStatus$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$Respond$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$ADDRECURRENCE$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$REOPENREQUEST$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$MANAGETEAMS$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$EDITREQUEST$$$" is not present
    Given I wait for "5" seconds
    Given I verify record related action "$$$AddNotes$$$" is present
    Given I wait for "5" seconds
    Given I verify record related action "$$$AttachDocuments$$$" is present
    Given I wait for "5" seconds
    
    #Logout and then close the browser
    Given I logout
    Given I tear down 
    