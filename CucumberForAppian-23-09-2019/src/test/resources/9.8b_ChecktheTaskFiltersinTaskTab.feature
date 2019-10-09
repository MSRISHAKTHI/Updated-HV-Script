@9.8b_ChecktheTaskFiltersinTaskTab
Feature: Check with the task filters available under TASKS Tab

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "$$$HVTestUrl$$$"
    And I set appian version to "$$$Appver$$$"
    And I set appian locale to "$$$en_US$$$"
    Then I login with username "$$$CsaUser$$$"
    
    Scenario: Initiate Request with Requestor Type as Investor and Save
    #I open Provide Request Information form and Initiate a request
    Given I open "$$$CSUrl$$$"
    Given I wait for "20" seconds
    Given I click on link "Initiate Request" 
    Given I wait for "15" seconds 
    
    #I Fill the values in the Comments and Documents section 
    Given I populate field type "PARAGRAPH" named "$$$Comments$$$" with "$$$CommentsValue$$$" 
    Given I wait for "5" seconds
    Given I populate field type "FILE_UPLOAD" named "$$$docField$$$$" with "$$$docPath$$$"
    Given I wait for "10" seconds  
   
    #I Fill the details in the Request Information section
    Given I populate field "Request Type(s)" with "$$$RequestType(s)$$$"
    And I wait for "5" seconds  
   
    #I verify the functionality of all the buttons
    And I click on button "$$$Save$$$"
    And I wait for "8" seconds
    Then I logout
    Then I tear down

  Scenario: Navigate to Tasks Tab and check with all filters available on tasks dashbaord
    Given I open "$$$CSUrl$$$"
    Given I wait for "20" seconds
    
    #Navigate to My tasks
    Given I populate field "Search" with "Initial Request Review"
    Given I wait for "8" seconds
    Given I populate field "Type" with
      | $$$RequestType(s)$$$ |
    
    Given I wait for "8" seconds
    Given I click on link "Today[2]"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[6]" row "[1]" contains "$$$RequestType(s)$$$"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "Client Service Associate"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Task"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Client Name"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Email Subject"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Request Type"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "4" seconds
    
    #Navigate to My group tasks
    Given I click on button "MY GROUP TASKS"
    Given I wait for "4" seconds
    
    #Check the Search, Type and Currently Assigned To
    Given I clear field "Select Filter Set(s)"
    Given I wait for "8" seconds
    Given I populate field "Search" with "19"
    Given I wait for "8" seconds
    Given I populate field "Type" with
      | $$$RequestType(s)$$$ |
      | Capital Calls |
      | Annual Meeting |
      | Contact Change |
      | Tax Reporting |
      | Cash Flow |
    Given I wait for "8" seconds
    Given I verify field "Type" contains validation message "Maximum of 5 request type can be selected"
    Given I wait for "8" seconds
    Given I clear field "Type"
    Given I wait for "8" seconds
    Given I populate field "Type" with
      |  $$$RequestType(s)$$$ |
    Given I wait for "8" seconds
    Given I populate field "Currently Assigned To" with
      | $$$CurrentlyAssignedto$$$ |
    Given I wait for "10" seconds
    
    #Check the different filters available in Request Due Date
    Given I click on link "Past Due[1]"
    Given I wait for "5" seconds
    Given I click on link "Today[1]"
    Given I wait for "5" seconds
    Given I click on link "Tomorrow"
    Given I wait for "5" seconds
    Given I click on link "This Week[1]"
    Given I wait for "5" seconds
    Given I click on link "Next Week"
    Given I wait for "5" seconds
    
    #Check the different filters available in Assigned On
    Given I click on link "Today[2]"
    Given I wait for "5" seconds
    Given I click on link "This Week[2]"
    Given I wait for "5" seconds
    Given I click on link "Last Week"
    Given I wait for "5" seconds
    Given I click on link "Older than 2 Weeks"
    Given I wait for "5" seconds
    
    #Check the Show only response email tasks checkbox fitler available on screen
    Given I click on checkbox option "[1]"
    Given I wait for "5" seconds
    
    #Uncheck the checkbox
    Given I click on checkbox option "[1]"
    Given I wait for "5" seconds
    
    #Clear the filters
    Given I click on button "CLEAR FILTERS"
    Given I wait for "9" seconds
    
    #Save the filter set , Set the default filters and check the all links
    #1.Add New filter and Save it
    Given I click on link "Add"
    Given I wait for "5" seconds
    Given I populate field "Filter Set Name" with "$$$FilterName$$$"
    Given I wait for "5" seconds
    Given I populate field "Search" with "19"
    Given I wait for "3" seconds
    Given I populate field "Type" with "$$$RequestType(s)$$$"
    Given I wait for "5" seconds
    Given I click on link "Save"
    Given I wait for "5" seconds
    #2.Set the added filter default
    When I click on link "Set Default"
    When I wait for "3" seconds
    #3.Update the exisitng filter
    Given I click on link "Update"
    Given I wait for "5" seconds
    Given I populate field "Currently Assigned To" with
      | Mindy Adams |
      | $$$CurrentlyAssignedto$$$ |
    Then I wait for "5" seconds
    Then I click on link "Save"
    #4.CHeck with Remove Filter
    Then I wait for "5" seconds
    Then I click on link "Remove"
    #Check the sorting for columns in My Tasks grid
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Task"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Client Name"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Email Subject"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Request Type"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Assigned On"
    Given I wait for "5" seconds
    Then I logout
    Then I tear down
