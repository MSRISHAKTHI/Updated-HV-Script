@ChecktheTaskFiltersinTaskTab
Feature: Check with the task filters available under TASKS Tab

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"
  
   Scenario: Scenario: Navigate to Tasks Tab and check with all filters available on tasks dashbaord
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "5" seconds
   
   #Check the Search, Type and Currently Assigned To
  
   Given I populate field "Type" with 
   | Compliance |
   | Capital Calls |
   | Annual Meeting |
   | Contact Change |
   | Client Reporting |
   | Cash Flow |
   Given I verify field "Type" contains validation message "Maximum of 5 request type can be selected"
   Given I wait for "3" seconds
   Given I populate field "Type" with 
   | Cash Flow  |
   Given I wait for "7" seconds
   Given I populate field "Currently Assigned To" with 
   | Mindy Adams |
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
   Given I click on link "Last Week"
   Given I wait for "5" seconds
   Given I click on link "This Week[2]"
   Given I wait for "5" seconds
   Given I click on link "Older than 2 Weeks"
   Given I wait for "5" seconds
   
   #Check the Show only response email tasks checkbox fitler available on screen] 
   Given I click on checkbox option "[1]"
   Given I wait for "5" seconds
   #Uncheck the checkbox
   Given I click on checkbox option "[1]"
   Given I wait for "5" seconds
   
   #Clear the filters
   Given I click on button "CLEAR FILTERS"
   Given I wait for "5" seconds
   
   #Save the filter set , Set the default filters and check the all links
   #1.Add New filter and Save it
   Given I click on link "Add"
   Given I wait for "3" seconds
   Given I populate field "Filter Set Name" with "New Filter Name -$$$dateTime$$$"
   Given I wait for "3" seconds
   Given I populate field "Search" with "1909"
   Given I wait for "3" seconds
   Given I populate field "Type" with "Compliance"
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
   Then I wait for "5" seconds
   Then I click on link "Save"
   
   #4.CHeck with Remove Filter
    Then I wait for "5" seconds
   Then I click on link "Remove"
   
   #Check the sorting for columns in Tasks grid
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
   Then I logout
   Then I tear down

