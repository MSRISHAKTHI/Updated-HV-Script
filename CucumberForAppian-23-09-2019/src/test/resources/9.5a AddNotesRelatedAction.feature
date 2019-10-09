@9.5a_AddNotes
Feature: Add Notes to Client Service Request using Related Action-Add Notes 

  Background: Login to Appian environment
 Given I setup with "$$$CHROME$$$" browser
When I set appian URL to "$$$HVTestUrl$$$"
And I set appian version to "$$$Appver$$$"
And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$complianceUser$$$"
  
   Scenario: Using Add Notes Related Action, Add Notes
  
  Given I open "$$$CSUrl$$$"
Given I wait for "10" seconds
    Given I click on site page "$$$Records$$$"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)" 
    Given I wait for "2" seconds
    #Given I populate field "Search" with "$$$RequestID$$$"
    #Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Request Id" 
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Request Id" 
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
    Given I wait for "5" seconds
    When I populate picker field "Tag People" with partially matching suggestions for
      | csa user1 |
      | csa user 2 |
    When I wait for "10" seconds
    When I populate field "Notes" with "$$$Add_this_comments_to_check_the_notes$$$"
    When I wait for "5" seconds
    Then I verify button "$$$Cancel$$$" is present
    Then I click on button "$$$Submit$$$"
    
    #Navigate to Notes/Discussions Dashbaord to view the added Notes
    Then I click on link "Notes/Discussions"
    Then I wait for "5" seconds
    
   #Set the filters to search notes and sort the grid
   Given I populate field "Search Notes[1]" with "$$$Add_this_comments_to_check_the_notes$$$"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Notes/Discussions"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Added On"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Added By"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Last Added On"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Last Added By"
   Given I wait for "5" seconds
   
    #Reply to the notes added
  Given I click on grid "[1]" column "[8]" row "[1]"
  Given I wait for "5" seconds
  When I populate field "Notes" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
 Given I wait for "5" seconds
  When I verify button "$$$Cancel$$$" is present
   Given I wait for "5" seconds
  Then I click on button "$$$Submit$$$"
  Then I wait for "5" seconds
  
  #View More details of added notes by clicking More Details icon
   Given I click on grid "[1]" column "[7]" row "[1]"
   Given I toggle box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I populate field "Search Notes[2]" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
   Given I wait for "5" seconds
   Given I click on button "CLEAR FILTERS[2]" 
   
   Given I populate field "Sort By" with "Older First"
   Given I wait for "3" seconds
   Given I populate field "Sort By" with "Newest First"
   Given I wait for "5" seconds
   Given I click on link "+ Reply"
   Given I wait for "5" seconds
   When I populate field "Notes" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
   When I wait for "2" seconds
   When I verify button "$$$Cancel$$$" is present
   Then I click on button "$$$Submit$$$"
   Then I wait for "5" seconds
   Then I logout
   Then I tear down
   
   