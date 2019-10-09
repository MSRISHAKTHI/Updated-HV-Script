@AddNotes
Feature: Add Notes to Client Service Request using Related Action-Add Notes 

  Background: Login to Appian environment
   Given I setup with "$$$Browser$$$" browser
    When I set appian URL to "$$$URL_HV$$$"
    And I set appian version to "$$$AppVer$$$"
    And I set appian locale to "$$$AppLoc$$$"
    Then I login with username "$$$treasuryUser$$$"
  
   Scenario: Using Add Notes Related Action, Add Notes
  
   Given I open "$$$URL_ClientService$$$"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    #Given I populate field "Search" with "8642"
    #Given I wait for "2" seconds
    Given I populate field "Type" with "$$$RequestType$$$"
    Given I sort grid "[1]" by column "[3]" 
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "[3]" 
    Given I wait for "2" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Add Notes"
    Given I wait for "2" seconds
    Given I toggle box "Enter Notes" visibility
    Given I wait for "3" seconds
    Given I toggle box "Enter Notes" visibility
    When I populate picker field "Tag People" with partially matching suggestions for
      | csa  |
      | test |
    When I populate field "Notes" with "Add This comments to check the notes -$$$dateTime$$$"
    When I wait for "5" seconds
    Then I verify button "CANCEL" is present
    Then I click on button "SUBMIT"
    
    #Navigate to Notes/Discussions Dashbaord to view the added Notes
    Then I click on link "Notes/Discussions"
    Then I wait for "5" seconds
    
   #Set the filters to search notes and sort the grid
   Given I populate field "Search Notes[1]" with "Add This comments to check the notes -$$$dateTime$$$"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Notes/Discussions"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Added On"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Added By"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Last Added On"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Last Added By"
   Given I wait for "5" seconds
   
    #Reply to the notes added
  Given I click on grid "[1]" column "[8]" row "[1]"
  Given I wait for "5" seconds
  When I populate field "Notes" with "Add this Reply comments to check the notes --$$$dateTime$$$"
  When I wait for "2" seconds
  When I verify button "CANCEL" is present
  Then I click on button "SUBMIT"
  Then I wait for "5" seconds
  
  #View More details of added notes by clicking More Details icon
   
   Given I click on grid "[1]" column "[7]" row "[1]"
   Given I toggle box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I populate field "Search Notes[2]" with "Add this Reply comments to check the notes --$$$dateTime$$$"
   Given I wait for "5" seconds
   Given I click on button "CLEAR FILTERS[2]" 
   
   Given I populate field "Sort By" with "Older First"
   Given I wait for "3" seconds
   Given I populate field "Sort By" with "Newest First"
   Given I wait for "5" seconds
   Given I click on link "+ Reply"
   Given I wait for "5" seconds
   When I populate field "Notes" with "Add this Reply comments to check the notes --$$$dateTime$$$"
   When I wait for "2" seconds
   When I verify button "CANCEL" is present
   Then I click on button "SUBMIT"
   Then I wait for "5" seconds
   
   

