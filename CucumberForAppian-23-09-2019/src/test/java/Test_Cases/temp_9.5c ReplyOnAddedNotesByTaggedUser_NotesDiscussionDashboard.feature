@9.5c_ReplyOnAddedNotesByTaggedUser
Feature: Reply to Notes/Discussions By tagged User

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
		When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
		And I set appian version to "19.2"
		And I set appian locale to "en_US"
		Then I login with username "csaUser1"
  
   Scenario: Reply on added notes/discussion
  
  #Navigate to Records to reply on notes/discussions
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "5" seconds
    #Given I populate field "Search" with "8642"
    #Given I wait for "2" seconds
    Given I sort grid "[1]" by column "Request Id" 
	   Given I wait for "4" seconds
	   Given I sort grid "[1]" by column "Request Id" 
	   Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
   
    #Navigate to Notes/Discussions Dashbaord to view the added Notes
    Then I click on link "Notes/Discussions"
    Then I wait for "5" seconds
    
    #Reply to the notes added
  Given I click on grid "[1]" column "[8]" row "[1]"
  Given I wait for "5" seconds
  When I populate field "Notes" with "Add this Reply comments to check the notes --10/04/2019"
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
   Given I populate field "Search Notes[2]" with "Add this Reply comments to check the notes --10/04/2019"
   Given I wait for "5" seconds
   Given I click on button "CLEAR FILTERS[2]" 
   
   Given I populate field "Sort By" with "Older First"
   Given I wait for "3" seconds
   Given I populate field "Sort By" with "Newest First"
   Given I wait for "5" seconds
   Given I click on link "+ Reply"
   Given I wait for "5" seconds
   When I populate field "Notes" with "Add this Reply comments to check the notes --10/04/2019"
   When I wait for "2" seconds
   When I verify button "CANCEL" is present
   Then I click on button "SUBMIT"
   Then I wait for "5" seconds
   Then I logout
   Then I tear down
   

