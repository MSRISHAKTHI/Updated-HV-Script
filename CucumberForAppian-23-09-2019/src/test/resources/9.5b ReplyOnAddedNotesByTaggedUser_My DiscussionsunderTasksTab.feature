@9.5b_ReplyOnAddedNotesByTaggedUserusingTasksTab
Feature: Reply to Notes/Discussions By tagged User

  Background: Login to Appian environment
		Given I setup with "$$$CHROME$$$" browser
		When I set appian URL to "$$$HVTestUrl$$$"
		And I set appian version to "$$$Appver$$$"
		And I set appian locale to "$$$en_US$$$"
		Then I login with username "$$$CsaUser$$$"

  
   Scenario: Reply on added notes/discussion
  
  #Navigate to My Discussions to reply on notes/discussions
    Given I open "$$$CSUrl$$$"
    Given I wait for "10" seconds
    Given I click on button "MY DISCUSSIONS"
    Given I wait for "2" seconds
   
   #Set filters
    Given I wait for "2" seconds
    #Given I populate field "Request Id" with "$$$RequestID$$$"
    #Given I wait for "2" seconds
    Given I populate picker field "Added By" with partially matching suggestions for "comp"
    Given I wait for "5" seconds
    Given I populate picker field "Tagged People" with partially matching suggestions for "user1"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I click on grid "[1]" column "[2]" row "[1]"
    Given I wait for "5" seconds   
    Given I verify grid "[1]" column "[2]" row "[1]" contains "$$$Add_this_comments_to_check_the_notes$$$"
    Given I wait for "5" seconds
    
    #Reply to the notes added
  Given I click on grid "[1]" column "[10]" row "[1]"
  Given I wait for "5" seconds
  When I populate field "Notes" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
  When I wait for "2" seconds
  When I verify button "$$$Cancel$$$" is present
  Then I click on button "$$$Submit$$$"
  Then I wait for "5" seconds
  
  #View More details of added notes by clicking More Details icon
  
   Given I click on button "MY DISCUSSIONS"
   Given I wait for "2" seconds 
   #Given I populate field "Request Id" with "$$$RequestID$$$"
   #Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Request Id"
   Given I wait for "5" seconds
   Given I click on grid "[1]" column "[9]" row "[1]"
   Given I wait for "5" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "3" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "2" seconds
   Given I populate field "Search Notes" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
   Given I wait for "5" seconds
   Given I click on button "CLEAR FILTERS[2]" 
   
   Given I populate field "Sort By" with "Older First"
   Given I wait for "3" seconds
   Given I populate field "Sort By" with "Newest First"
   Given I wait for "5" seconds
   
   #Reply to notes by clicking reply link available under more details
   Given I click on link "+ Reply"
   Given I wait for "5" seconds
   When I populate field "Notes" with "$$$Add_this_Reply_comments_to_check_the_notes$$$"
   When I wait for "2" seconds
   When I verify button "$$$Cancel$$$" is present
   Then I click on button "$$$Submit$$$"
   Then I wait for "5" seconds
   Then I logout
   Then I tear down
   