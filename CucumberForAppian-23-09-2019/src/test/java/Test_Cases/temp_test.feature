@Checksitemenu
Feature: Check with site menu

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/?signin=native"
    And I set appian version to "19.1"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"

  Scenario: Test
    Given I wait for "10" seconds
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    #Given I wait for "10" seconds
    #Given I click on link "All"
    #Given I wait for "10" seconds
    #Given I click on grid "[1]" column "[3]" row "[1]"
    #Given I click on link "Please click on this link to check"
    #Given I wait for "10" seconds
    #Given I click on link "Close"
    #Given I wait for "2" seconds
    #When I verify grid "[1]" column "[4]" row "[1]" contains "Unknown"
    #Given I wait for "3" seconds
    #When I verify grid "[1]" column "[2]" row "[1]" contains "swetar@vuram.com"
    #Given I populate field "Search" with "8231"
    #Given I wait for "5" seconds
    #Given I click on grid "[1]" column "[3]" row "[2]"
    #Given I wait for "5" seconds
    #When I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "Trea"
    #When I populate grid "[1]" column "[4]" row "[1]" with "Comments"
    #When I wait for "5" seconds
    #When I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC.pdf"
    #When I populate field  type "PARAGRAPH" named "[3]" with "Comments to para"
    #Given I click on site page "CLIENT SERVICE REQUESTS"
    
    #Navigate to respond related action
    #Given I wait for "10" seconds
    #Given I click on site page "CLIENT SERVICE REQUESTS"
    #Given I populate field "Search" with "1651"
    #Given I wait for "2" seconds
    #Given I click on grid "[1]" column "[3]" row "[1]"
    #Given I wait for "10" seconds
    #Given I click on record related action "RESPOND"
    #Given I wait for "10" seconds
    #Given I click on checkbox option "High"
    #Given I wait for "10" seconds
    #Given I toggle box "Email[2]" visibility
    #Given I populate field type "TEXT" named "[1]" with "swetar@vuram.com"
    #Given I wait for "5" seconds
    #Given I populate field type "TEXT" named "[2]" with "prakruthil@vuram.com"
    #Given I wait for "5" seconds
    #Given I populate picker field "[2]" with partially matching suggestions for "csa"
    #Given I wait for "5" seconds
    #Given I populate picker field "[3]" with partially matching suggestions for "test"
    #Given I wait for "5" seconds
    #Given I populate field type "TEXT" named "[3]" with "test subject"
    #Given I populate field type "PARAGRAPH" named "[1]" with "Email"
    #Given I populate picker field "[1]" with partially matching suggestions for "csa"
    #When I populate field type "FILE_UPLOAD" named "Add Attachments" with "C:\Users\swetar.VURAM.000\Documents\C_TESTESTEST_,.)(123&%$!_TESTESTEST DOC.pdf"
    #When I populate field "Rename Attachment(s)" with "Test Document"
    
    #Navigate to Add Notes related action
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I populate field "Search" with "1655"
    Given I wait for "2" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "5" seconds
    Given I click on record related action "Add Notes"
    Given I wait for "5" seconds
    Given I toggle box "Enter Notes" visibility
    When I populate picker field "Tag People" with partially matching suggestions for
      | csa  |
      | test |
    When I populate field "Notes" with "Comments"
    Then I click on button "SUBMIT"
    Then I click on link "Notes/Discussions"

