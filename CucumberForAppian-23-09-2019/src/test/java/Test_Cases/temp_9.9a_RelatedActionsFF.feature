@9.9a_RelatedActionsFF
Feature: Check for the functionality of the related actions

  Background: Login to Appian environment
    Given I setup with "CHROME" browser
    When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
    And I set appian version to "19.2"
    And I set appian locale to "en_US"
    Then I login with username "csaUser1"

  Scenario: Initiate Request
    #I open Provide Request Information form and Initiate a request
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    When I click on site page "TASKS"
    Given I wait for "10" seconds
    Given I click on link "Initiate Request"
    Given I wait for "20" seconds
    #I Fill the values in the Comments and Documents section
    Given I populate field type "PARAGRAPH" named "[2]" with "Good to go"
    Given I wait for "5" seconds
    Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
    Given I wait for "20" seconds
    
    #I Fill the details in the Request Information section 
    #Given I click on radio option "High"
    Given I click on checkbox option "[1]"
    Given I populate field "Issue Description" with "Issue Description"
    Given I wait for "3" seconds
    Given I click on link "Click here to search for Requestor Institution"
    And I wait for "5" seconds
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "3" seconds
    Given I click on grid "Search Result(s)" column "Name" row "[1]"
    Then I click on button "Yes"
    And I wait for "5" seconds
    Given I populate field "Request Due Date" with "10/04/2019"
And I wait for "5" seconds
    Given I populate field "Request Type(s)" with "Compliance"
    And I wait for "5" seconds
    Given I populate field "Description" with "Description"
    Given I wait for "10" seconds
    #I Fill the details in the Client Information section
    Given I click on link "Click here to search for Client Institution"
    And I wait for "5" seconds
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    And I wait for "5" seconds
    Given I click on grid "Search Result(s)" column "Name" row "[1]"
    And I wait for "5" seconds
    Given I click on link "Search Investor(s) for RJA - Atlanta - 1100 Abernathy Rd NE"
    Given I wait for "5" seconds
    Given I populate picker field "Name" with partially matching suggestions for "aber"
    Given I wait for "5" seconds
    Given I select grid "Search Result(s)" row "[2]"
    Given I wait for "5" seconds
    Given I click on link "Add Selected Investor(s)"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[3]" row "[1]" with "[2]"
    Given I wait for "5" seconds
    #I Fill the details in the Functional Team section
    Given I click on checkbox option "[2]"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "Accounting"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "Accounting"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[3]" row "[1]" with "10/04/2019"
    Given I wait for "5" seconds
    Given I populate grid "[1]" column "[4]" row "[1]" with "Test"
    Given I wait for "5" seconds
    Given I click on button "RESPOND TO CLIENT"
    Given I wait for "5" seconds
    And I click on button "Yes"
    And I wait for "10" seconds
    #Send Response to client by entering To Recipients and CC Recipients and Email Subject and Body
    Given I click on checkbox option "High"
    Given I wait for "5" seconds
    Given I toggle box "Email[2]" visibility
    Given I wait for "5" seconds
    Given I populate field type "TEXT" named "[1]" with "srishakthim@vuram.com"
    Given I wait for "5" seconds
    Given I populate field type "TEXT" named "[2]" with "swetar@vuram.com"
    Given I wait for "5" seconds
    Given I populate field type "TEXT" named "[3]" with "Respond to Client"
    Given I wait for "5" seconds
    Given I populate field type "PARAGRAPH" named "[1]" with "Request Initiated"
    Given I wait for "5" seconds
    When I populate field type "FILE_UPLOAD" named "Add Attachments" with "C:\Users\srishakthim\Pictures\Warning.png"
    Given I wait for "8" seconds
    #Given I populate picker field "[1]" with partially matching suggestions for "csa"
    #Given I wait for "5" seconds
    When I populate grid "[1]" column "[1]" row "[1]" with "Respond related document"
    When I wait for "5" seconds
    And I click on button "SEND"
    When I wait for "5" seconds
    And I click on button "Yes"
    When I wait for "8" seconds
    #I verify the status in Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response"
    Given I wait for "8" seconds
    Given I logout 
    Given I tear down
    
Scenario: Edit the request Initiated
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
       
   #Click on the task
Given I wait for "6" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "8" seconds

#I navigate to Edit request related action
Given I click on link "Related Actions"
Given I wait for "15" seconds
Given I click on link "Edit Request"
Given I wait for "5" seconds
Given I clear field "Request Due Date"
Given I wait for "5" seconds
Given I populate field "Request Due Date" with "10/04/2019"
Given I wait for "5" seconds
#Given I click on radio option "High"
#Given I wait for "3" seconds
#Given I click on checkbox option "[1]"
#Given I wait for "5" seconds
Given I clear field "Issue Description"
Given I wait for "5" seconds
Given I populate field "Issue Description" with "Edit Issue Description"
Given I wait for "3" seconds
Given I clear field "Description" 
Given I populate field "Description" with "Edit Description" 
Given I wait for "5" seconds  
Given I clear field "Comments"
Given I populate field "Comments" with "Comments" 
Given I wait for "5" seconds
Given I clear field "Request Type(s)" 
Given I populate field "Request Type(s)" with "Capital Calls" 
Given I wait for "5" seconds

#I edit the Client Information
Given I click on link "Click here to search for Client Institution"
Given I wait for "5" seconds
Given I populate picker field "Name" with partially matching suggestions for "sec"
Given I wait for "3" seconds
Given I click on grid "Search Result(s)" column "Name" row "[1]"
Given I wait for "5" seconds
Given I click on link "Search Investor(s) for Woori Investment & Securities" 
Given I wait for "5" seconds
Given I populate picker field "Name" with partially matching suggestions for "aber"
Given I wait for "5" seconds
Given I select grid "Search Result(s)" row "[2]"
Given I wait for "5" seconds
Given I click on link "Add Selected Investor(s)"
Given I wait for "5" seconds
Given I populate grid "[1]" column "[3]" row "[1]" with "[2]"
Given I wait for "5" seconds 
Given I click on button "UPDATE"
Given I wait for "10" seconds
And I click on button "Yes"
 Given I wait for "30" seconds

#I verify the deails in the summary dashboard
Given I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "High"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "Capital Calls"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "Edit Description"
  Given I wait for "6" seconds
Given I verify field "Request Type(s)" contains "Capital Calls"
 Given I wait for "5" seconds
  Given I verify field "Client Name" contains "Woori Investment & Securities"
 Given I wait for "5" seconds
 
#Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "Edit Request Information"
 Given I wait for "6" seconds
 Given I verify grid "[1]" column "[9]" row "[1]" contains "Comments"
 Given I wait for "4" seconds
  Given I logout 
    Given I tear down
 
  Scenario: Using Add Notes Related Action, Add Notes
  #Navigate to Add Notes related actions
  Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "15" seconds 
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
       
   #Click on the task
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Add Notes"
    Given I wait for "3" seconds
    Given I toggle box "Enter Notes" visibility
    Given I wait for "3" seconds
    Given I toggle box "Enter Notes" visibility
    Given I wait for "5" seconds
    When I populate picker field "Tag People" with partially matching suggestions for "Compliance" 
    When I wait for "8" seconds
    When I populate field "Notes" with "Add This comments to check the notes -10/04/2019"
    When I wait for "5" seconds
    Then I verify button "CANCEL" is present
     Given I wait for "5" seconds
    Then I click on button "SUBMIT"
    
    #Navigate to Notes/Discussions Dashbaord to view the added Notes
    Then I click on link "Notes/Discussions"
    Then I wait for "5" seconds
    
   #Set the filters to search notes and sort the grid
   Given I populate field "Search Notes[1]" with "Add This comments to check the notes -10/04/2019"
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
  When I populate field "Notes" with "Add this Reply comments to check the notes --10/04/2019"
  When I wait for "2" seconds
  When I verify button "CANCEL" is present
  Then I click on button "SUBMIT"
  Then I wait for "5" seconds
  
  #View More details of added notes by clicking More Details icon
   Given I click on grid "[1]" column "[7]" row "[1]"
    Given I wait for "5" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "5" seconds
   Given I toggle box "Discussion History" visibility
   Given I wait for "5" seconds
   Given I populate field "Search Notes[2]" with "Add this Reply comments to check the notes --10/04/2019"
   Given I wait for "5" seconds
   Given I click on button "CLEAR FILTERS[2]" 
     Given I wait for "5" seconds 
   Given I populate field "Sort By" with "Older First"
   Given I wait for "5" seconds
   Given I populate field "Sort By" with "Newest First"
   Given I wait for "5" seconds
   Given I click on link "+ Reply"
   Given I wait for "5" seconds
   When I populate field "Notes" with "Add this Reply comments to check the notes --10/04/2019"
   When I wait for "5" seconds
   When I verify button "CANCEL" is present
    Given I wait for "5" seconds
   Then I click on button "SUBMIT"
   Then I wait for "5" seconds
    Given I logout 
    Given I tear down
  
   Scenario: Using Manage Team Related Action, Delete the existing added teams and Add New Teams  
 Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "8" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "8" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "8" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "7" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "6" seconds
    Given I click on record related action "Manage Teams"
    Given I wait for "10" seconds
    
  #Remove the existing team and add additional teams
    Given I click on grid "[1]" column "[6]" row "[1]"
Given I wait for "8" seconds
Given I click on link "Add Functional Team"
Given I wait for "4" seconds
Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "Compliance"
Given I wait for "4" seconds
Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "Compliance"
Given I wait for "5" seconds   
Given I populate grid "[1]" column "[3]" row "[1]" with partially matching picker field suggestions for "10/04/2019"
Given I wait for "4" seconds
Given I populate grid "[1]" column "[4]" row "[1]" with partially matching picker field suggestions for "Test"
Given I wait for "4" seconds
Given I click on link "Add Functional Team"
Given I wait for "10" seconds
Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "Tax"
Given I wait for "6" seconds
Given I populate grid "[1]" column "[2]" row "[2]" with partially matching picker field suggestions for "Tax"
Given I wait for "8" seconds   
Given I populate grid "[1]" column "[3]" row "[2]" with partially matching picker field suggestions for "10/04/2019"
Given I wait for "8" seconds
Given I populate grid "[1]" column "[4]" row "[2]" with partially matching picker field suggestions for "Test"
Given I wait for "6" seconds
Given I click on button "COMPLETE" 
Given I wait for "6" seconds
And I click on button "Yes"
Given I wait for "6" seconds
 
#Verify the Status of Request in Client Service Records
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "5" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "5" seconds
Given I verify grid "[1]" column "[10]" row "[1]" contains "Pending Functional Team Response"
Given I wait for "5" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "4" seconds
  
  #Navigate to summary dashboard and verify the Request details and functional team details
 When I click on link "Summary"
 Given I wait for "5" seconds
 Given I verify field "Priority" contains "High"
 Given I wait for "5" seconds
 Given I verify field "Request Type(s)" contains "Compliance"
 Given I wait for "5" seconds
 Given I verify field "Description" contains "Description"
 Given I wait for "5" seconds
Given I verify grid "[2]" column "[1]" row "[1]" contains "Compliance" 
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[9]" row "[1]" contains "Pending Response"
  Given I wait for "5" seconds
 Given I click on grid "[2]" column "[10]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I wait for "4" seconds
  Given I click on link "Close"
  Given I wait for "6" seconds
 Given I verify grid "[2]" column "[1]" row "[2]" contains "Tax" 
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[9]" row "[2]" contains "Pending Response" 
 Given I wait for "4" seconds
 Given I click on grid "[2]" column "[10]" row "[2]"
 Given I wait for "5" seconds
 Given I verify grid "[3]" column "[1]" row "[1]" contains "Request Fulfillment"
  Given I wait for "6" seconds
 Given I click on link "Close"
 Given I wait for "5" seconds
 
 #Navigate to Active tasks additional dashboard and verify the Request fulfillment task in other active tasks
  Given I click on link "Active Tasks"
   Given I wait for "4" seconds
  Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
    Given I sort grid "[2]" by column "Assigned On"
    Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[1]" contains "GCS Tax"
   Given I wait for "4" seconds
  Given I verify grid "[2]" column "[1]" row "[2]" contains "Request Fulfillment"
  Given I wait for "3" seconds
  Given I verify grid "[2]" column "[4]" row "[2]" contains "GCS Compliance"
  Given I wait for "10" seconds
  
  #Navigate to Fulfillment details additional dashboard and verify
  Given I click on link "Fulfillment Details"
  Given I wait for "10" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "Compliance"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[2]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[2]" contains "10/04/2019"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[2]" contains "Pending Response"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[2]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I wait for "6" seconds
  Given I click on link "Close"
  Given I wait for "6" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "Tax"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[1]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[1]" contains "10/04/2019"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[11]" row "[1]" contains "Pending Response"
 Given I wait for "3" seconds
 Given I click on grid "[1]" column "[12]" row "[1]"
 Given I wait for "5" seconds
 Given I verify grid "[2]" column "[1]" row "[1]" contains "Request Fulfillment"
 Given I wait for "6" seconds
 Given I click on link "Close"
  Given I wait for "6" seconds
 Given I verify grid "[1]" column "[1]" row "[3]" contains "Accounting"
 Given I wait for "6" seconds
 Given I verify grid "[1]" column "[11]" row "[3]" contains "Retracted"
 Given I wait for "4" seconds
  
 #Navigate to Audit history additional dashboard and verify
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Received On"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[1]" contains "Request Fulfillment"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "Request Fulfillment"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[1]" row "[3]" contains "Manage Functional Teams"
Given I wait for "4" seconds
Given I logout 
Given I tear down

Scenario: Link the request Initiated
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "8" seconds
Given I clear field "Select Filter Set(s)"
Given I wait for "8" seconds
       
   #Click on the record
Given I sort grid "[1]" by column "Request Id"
Given I wait for "8" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "8" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "10" seconds
    
#Navigate to link request related action, verify the pagination and sorting of Request details grid
Given I click on link "Related Actions"
Given I wait for "6" seconds
Given I click on link "Link/Unlink Requests"
Given I wait for "10" seconds
    Given I click on grid "[1]" navigation "next"
    Given I click on grid "[1]" navigation "last"
    Given I click on grid "[1]" navigation "previous"
    Given I click on grid "[1]" navigation "first"
    Given I wait for "5" seconds
    
    #Click on sorting of the requests details grid
    Given I sort grid "[1]" by column "Priority"
    Given I sort grid "[1]" by column "Priority"
    Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Type"
    Given I sort grid "[1]" by column "Request Type"
    Given I sort grid "[1]" by column "Received Date"
    Given I sort grid "[1]" by column "Received Date"
    Given I sort grid "[1]" by column "Due Date"
    Given I sort grid "[1]" by column "Due Date"
    Given I sort grid "[1]" by column "Status"
    Given I sort grid "[1]" by column "Status"
    Given I sort grid "[1]" by column "Request Owner"
    Given I sort grid "[1]" by column "Request Owner"
    Given I wait for "5" seconds
    
    #Click on link request
    #Given I click on grid "[1]" column "[10]" row "[1]"
    #Given I wait for "5" seconds
    Given I click on grid "[1]" column "[10]" row "[1]"
    Given I wait for "10" seconds
    
    #Click on sorting of newly linked requests grid
    Given I sort grid "[2]" by column "Priority"
    Given I sort grid "[2]" by column "Priority"
    Given I sort grid "[2]" by column "Request Id"
    Given I sort grid "[2]" by column "Request Id"
    Given I sort grid "[2]" by column "Request Type"
    Given I sort grid "[2]" by column "Request Type"
    Given I sort grid "[2]" by column "Received Date"
    Given I sort grid "[2]" by column "Received Date"
    Given I sort grid "[2]" by column "Due Date"
    Given I sort grid "[2]" by column "Due Date"
    Given I sort grid "[2]" by column "Status"
    Given I sort grid "[2]" by column "Status"
    Given I sort grid "[2]" by column "Request Owner"
    Given I sort grid "[2]" by column "Request Owner"
    Given I wait for "5" seconds
    
    #Remove the row from the newly linked requests grid
     #Given I click on grid "[2]" column "[10]" row "[2]"
    #Given I wait for "5" seconds
    Given I click on grid "[2]" column "[10]" row "[1]"
    Given I wait for "5" seconds
    
   #Search for required request id, request type and request owner
Given I populate field "Request ID" with "8642"
Given I wait for "2" seconds
Given I populate field "Request Type" with "Compliance"
Given I wait for "2" seconds
Given I populate field "Request Owner" with "CSA User1"
Given I wait for "5" seconds

#Click on link request
Given I click on grid "[1]" column "[10]" row "[1]"
Given I wait for "5" seconds

#Verfiy that cancel buttion is present and then click on complete button to submit
Given I verify button "CANCEL" is present
Given I wait for "5" seconds
Given I click on button "COMPLETE"
Given I wait for "5" seconds
Given I click on button "Yes"
Given I wait for "10" seconds

#I verify the status in Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "8" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "8" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "8" seconds
  
 #Navigate to summary dashboard and verify the Request details and functional team details
 Given I click on grid "[1]" column "[3]" row "[1]"
 Given I wait for "8" seconds
 
 #Navigate to Emails dashboard and verify
 Given I click on link "Linked Request(s)"
  Given I wait for "6" seconds
  Given I verify grid "[1]" column "[1]" row "[1]" contains "8642"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Last Updated On"
    Given I sort grid "[1]" by column "Last Updated On"
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Last Updated By"
    Given I sort grid "[1]" by column "Last Updated By"
    Given I wait for "4" seconds
     Given I sort grid "[1]" by column "Request Id"
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "4" seconds
 Given I logout 
    Given I tear down
    
   Scenario: Relink request   
    #Open client service site  
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "15" seconds
    
    #Click on client service request site page
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "20" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "10" seconds
    #Given I populate field "Search" with "8642"
       
   #Click on the record
		Given I wait for "5" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "4" seconds
		Given I sort grid "[1]" by column "Request Id"
		Given I wait for "6" seconds
		    
    #Select the record to link the request
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "5" seconds
  
    #Navigate to link/unlink request related action, then unlink the linked request
    Given I click on link "Related Actions"
    Given I wait for "5" seconds
    Given I click on record related action "Link/Unlink Requests"
    Given I wait for "10" seconds
    Given I click on grid "[1]" column "[4]" row "[1]"
    Given I wait for "5" seconds    
    
    #Navigate to unlinked requests grid, re link the unlinked requests
    Given I wait for "10" seconds
    Given I click on grid "[2]" column "[4]" row "[1]"
    Given I wait for "10" seconds
    Given I click on button "COMPLETE"
    Given I set take error screenshots to "true"
    Given I take screenshot "RELINK Request"
    
    #Navigate to link/unlink request related action, then unlink the linked request
    Given I wait for "10" seconds
    Given I click on grid "[1]" column "[4]" row "[1]"
    Given I wait for "5" seconds
  
    #Verfiy that cancel buttion is present and then click on complete button to submit
    Given I verify button "CANCEL" is present
    Given I click on button "COMPLETE"
    Given I wait for "5" seconds
    Given I click on button "Yes"
    Given I wait for "10" seconds
    
 #I verify the status in Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "6" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
   
   #Navigate to summary dashboard and verify the Request details and functional team details
   Given I click on grid "[1]" column "[3]" row "[1]"
   Given I wait for "4" seconds   
   Given I verify text "Linked Request(s)" is present
   Given I wait for "5" seconds
    
  Scenario: Using Attach document Related Action, Attach Documents to Client Service Request
     
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)" 
    Given I wait for "2" seconds
    #Given I populate field "Search" with "8642"
    #Given I wait for "5" seconds 
	   Given I sort grid "[1]" by column "Request Id"
	   Given I wait for "5" seconds
	   Given I sort grid "[1]" by column "Request Id"
	   Given I wait for "5" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "8" seconds
    Given I click on record related action "Attach Documents"
    Given I wait for "2" seconds
    Given I populate field type "FILE_UPLOAD" named "[1]" with 
    | C:\Users\srishakthim\Pictures\Screenshots\Screenshot (8).png |
    | C:\Users\srishakthim\Pictures\Screenshots\Screenshot (9).png |
    When I wait for "5" seconds
    Then I verify button "CANCEL" is present
    Then I click on button "SUBMIT"
    
    #Navigate to Documents Dashboard to view the attached documents
    Then I click on link "Documents"
    Then I wait for "5" seconds
    
   #Verify the documents and sort the grid
   Given I verify grid "[1]" column "[1]" row "[1]" contains "Screenshot (8)"
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[2]" row "[1]" contains "Task-Related Documents"
   Given I wait for "2" seconds
   Given I verify grid "[1]" column "[1]" row "[2]" contains "Screenshot (9)"
   Given I wait for "2" seconds
   Given I verify grid "[1]" column "[2]" row "[2]" contains "Task-Related Documents"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Documents"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Category"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Uploaded By"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Uploaded On"
   Given I wait for "5" seconds
   
   #Verify the document uploaded grid in Related actions and 
     Given I click on link "Related Actions"
     Given I wait for "2" seconds
     Given I click on record related action "Attach Documents"
     Given I wait for "2" seconds
     Given I populate field type "FILE_UPLOAD" named "[1]" with "C:\Users\srishakthim\Pictures\Warning.png"
     When I wait for "5" seconds
     Then I verify grid "[1]" column "[1]" row "[1]" contains "Screenshot (8)"
	   Then I wait for "5" seconds
	   Then I verify grid "[1]" column "[2]" row "[1]" contains "Task-Related Documents"
	   Then I wait for "2" seconds
	   Then I verify grid "[1]" column "[1]" row "[2]" contains "Screenshot (9)"
	   Then I wait for "2" seconds
	   Then I verify grid "[1]" column "[2]" row "[2]" contains "Task-Related Documents"
	   Then I wait for "2" seconds
	   Then I sort grid "[1]" by column "Documents"
	   Then I wait for "2" seconds
	   Then I sort grid "[1]" by column "Category"
	   Then I wait for "5" seconds
	   Then I sort grid "[1]" by column "Uploaded By"
	   Then I wait for "5" seconds
	   Then I sort grid "[1]" by column "Uploaded On"
	   Then I wait for "5" seconds
	   Then I click on button "CANCEL"
	   Then I wait for "3" seconds
	   Then I click on button "YES"
	   Then I wait for "3" seconds
	   Then I click on link "Documents"
	   Then I wait for "5" seconds
	   
	   #Set the filter available in documents Dashboard 
	   Then I populate field "[2]" with "Task-Related Documents"
	   Then I wait for "5" seconds
	   Then I click on button "CLEAR"
	   Then I wait for "5" seconds
	    Given I logout 
    Given I tear down
    
	   Scenario: Update status related action submission with status Close
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "10" seconds 
Given I click on site page "CLIENT SERVICE REQUESTS"
Given I wait for "8" seconds
Given I clear field "Select Filter Set(s)"
 Given I wait for "5" seconds
       
   #Click on the task
Given I sort grid "[1]" by column "Request Id"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Request Id"
Given I wait for "6" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "5" seconds
    
    #Navigate to update status related action, select close status and then enter comments for the same
    Given I click on record related action "UPDATE STATUS"
    Given I wait for "9" seconds
    #Given I click on radio option "Close"
    #Given I wait for "5" seconds
    Given I populate field "Comments" with "Good to go"
    
    #Select the issue checkbox and then enter the issue description
    Given I click on checkbox option "[1]"
     Given I wait for "5" seconds
    Given I click on checkbox option "[1]"
    Given I wait for "5" seconds
    Given  I clear field "Issue Description"
    Given I wait for "5" seconds
    Given I populate field "Issue Description" with "Issue Description"
    Given I wait for "5" seconds
    
    #Verfiy that cancel buttion is present and then click on close button to submit
    Given I verify button "CANCEL" is present
      Given I wait for "5" seconds
    Given I click on button "CLOSE"
    Given I wait for "5" seconds
    Given I click on button "Yes"
    Given I wait for "10" seconds
    
    #I verify the status in Records
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)"
    Given I wait for "6" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I sort grid "[1]" by column "Request Id"
    Given I wait for "5" seconds
    Given I verify grid "[1]" column "[10]" row "[1]" contains "Closed" 
    Given I wait for "5" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
		Given I wait for "10" seconds
    
   #Observe in Audit History
 Given I click on link "Audit History"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I sort grid "[1]" by column "Received On"
 Given I wait for "4" seconds
 Given I verify grid "[1]" column "[1]" row "[1]" contains "Close Request"
 Given I wait for "6" seconds
 Given I verify grid "[1]" column "[9]" row "[1]" contains "[2]"
 Given I wait for "4" seconds
  Given I logout 
    Given I tear down


