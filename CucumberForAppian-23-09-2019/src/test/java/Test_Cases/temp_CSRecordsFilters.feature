@ChecktheRecordFiltersinClientServiceRequestsTab
Feature: Check with the Record filters available under Client Service Requests Records Tab

  Background: Login to Appian environment
   Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"
  
   Scenario: Navigate to Client Service Requests Records Tab and check with all filters available on dashbaord
  
   Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
   Given I wait for "2" seconds
   Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
   
   #Check the filters Search, Type and Currently Assigned To
   Given I clear field "Status"
   Given I wait for "2" seconds
   Given I populate field "Status" with
   | Pending Functional Team Response |
   | Pending Request Owner Response |
   | Pending Client Response |
     Given I wait for "3" seconds
   Given I populate field "Type" with "Compliance"
   Given I wait for "2" seconds
   Given I populate field "Functional Team" with 
   | Accounting |
   | Client Service Associate |
   | Compliance |
   | Treasury |
   | Credit |
   | Tax |
   Given I wait for "3" seconds
   Given I verify field "Functional Team" contains validation message "Maximum of 5 functional team can be selected"
   Given I wait for "2" seconds
   Given I populate field "Functional Team" with 
   | Accounting |
   Given I wait for "5" seconds
   Given I clear field "Request Owner"
   Given I wait for "5" seconds
   Given I populate picker field "Request Owner" with partially matching suggestions for 
   | user1 |
   | user 2|
   Given I wait for "10" seconds
   Given I populate picker field "Requestor" with partially matching suggestions for 
   | user1 |
   Given I wait for "5" seconds
   Given I populate field "Account Manager" with "Alex Barker"
   Given I wait for "5" seconds
   Given I populate picker field "Task Owner" with partially matching suggestions for 
   | maggie |
   Given I wait for "5" seconds
   
   #Check the Show only recurring requests checkbox fitler available on screen 
   Given I click on checkbox option "[1]"
   Given I wait for "5" seconds
   #Uncheck the checkbox
   Given I click on checkbox option "[1]"
   Given I wait for "5" seconds
   
   #Check the different filters available in Request Due Date
   Given I click on link "Past Due[1]"
   Given I wait for "5" seconds
   Given I click on link "Tomorrow"
   Given I wait for "5" seconds
   Given I click on link "This Week[1]"
   Given I wait for "5" seconds
   Given I click on link "Next Week"
   Given I wait for "5" seconds
   Given I click on link "Custom[1]"
   Given I wait for "5" seconds
   Given I populate field "From[1]" with "09/16/2019"
   Given I wait for "5" seconds
   Given I populate field "To[1]" with "10/04/2019"
   Given I wait for "5" seconds
   Given I click on link "All[1]"
   Given I wait for "5" seconds
   
     #Check the different filters available in Received On
   Given I click on link "Today[2]"
   Given I wait for "5" seconds
   Given I click on link "Last Week"
   Given I wait for "5" seconds
   Given I click on link "This Week[2]"
   Given I wait for "5" seconds
   Given I click on link "Older than 2 Weeks"
   Given I wait for "10" seconds
   Given I click on link "Custom[2]"
   Given I wait for "5" seconds
   Given I populate field "From" with "09/16/2019"
   Given I wait for "5" seconds
   Given I populate field "To" with "10/04/2019"
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
   Given I wait for "7" seconds
   Given I populate field "Functional Team" with 
   | Accounting |
   | Client Service Associate |
   | Compliance |
   Given I click on link "Save"
   Given I wait for "5" seconds
   
    #2.Set the added filter default
   When I click on link "Set Default"
   When I wait for "3" seconds
   
   #3.Update the exisitng filter
   Given I click on link "Update"
   Given I wait for "5" seconds
   Given I clear field "Status"
   Then I wait for "5" seconds
   Given I populate field "Account Manager" with "Alex Barker"
   Given I wait for "5" seconds
   Then I click on link "Save"
   
    #Check the sorting for columns in Tasks grid
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Client Name" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Email Subject" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Type" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Request Due Date" 
   Given I wait for "4" seconds
   Given I sort grid "[1]" by column "Completed On" 
   Given I wait for "4" seconds
   
   #4.Check with Remove Filter
   Then I wait for "5" seconds
   Then I click on link "Remove"
   Then I logout
   Then I tear down

