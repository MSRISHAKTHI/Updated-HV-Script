@3.6MTInReviewCommentsfromAccountingTeamTask
Feature: Manage Teams in Review comments from accounting team task

 Background: Login to LH Test environment
Given I setup with "CHROME" browser
When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
And I set appian version to "19.2"
And I set appian locale to "en_US"
Then I login with username "csaUser1"
   
Scenario: Manage Teams in Review comments from accounting team task
# Clear the filter set
Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
Given I wait for "8" seconds 
Given I clear field "Select Filter Set(s)"

#Click on the Review response from Functional Team
Given I wait for "8" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I sort grid "[1]" by column "Assigned On"
Given I wait for "4" seconds
Given I click on grid "[1]" column "[3]" row "[1]"
Given I wait for "8" seconds

#Manage Teams in the Review comments and take action task
Given I click on link "Manage Teams"
Given I wait for "5" seconds
Given I click on grid "[1]" column "[6]" row "[1]"
Given I wait for "4" seconds
Given I click on link "Add Functional Team"
Given I populate grid "[1]" column "[1]" row "[1]" with partially matching picker field suggestions for "Compliance"
Given I wait for "5" seconds 
Given I populate grid "[1]" column "[2]" row "[1]" with partially matching picker field suggestions for "Compliance"
Given I wait for "5" seconds   
Given I populate grid "[1]" column "[3]" row "[1]" with partially matching picker field suggestions for "09/28/2019"
Given I wait for "5" seconds 
Given I populate grid "[1]" column "[4]" row "[1]" with partially matching picker field suggestions for "Test"
Given I wait for "4" seconds
Given I click on link "Add Functional Team"
Given I wait for "5" seconds
Given I populate grid "[1]" column "[1]" row "[2]" with partially matching picker field suggestions for "Tax"
Given I wait for "5" seconds 
Given I populate grid "[1]" column "[2]" row "[2]" with partially matching picker field suggestions for "Tax"
Given I wait for "5" seconds   
Given I populate grid "[1]" column "[3]" row "[2]" with partially matching picker field suggestions for "09/28/2019"
Given I wait for "5" seconds 
Given I populate grid "[1]" column "[4]" row "[2]" with partially matching picker field suggestions for "Test"
Given I wait for "4" seconds
Given I click on button "COMPLETE" 
Given I wait for "4" seconds
And I click on button "Yes"
Given I wait for "6" seconds

#Verify the warning messae
#Given I verify text "This task has been already completed. So kindly close this page and please check the status" is present
Given I wait for "5" seconds
Given I click on button "Close[1]"
Given I wait for "5" seconds
 
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
Given I click on grid "[1]" column "[3]" row "[1}"
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
  Given I click on link "ACtive Tasks"
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
  Given I wait for "6" seconds
  
  #Navigate to Fulfillment details additional dashboard and verify
  Given I click on link "Fulfillment Details"
  Given I wait for "6" seconds
Given I verify grid "[1]" column "[1]" row "[2]" contains "Compliance"
Given I wait for "4" seconds
Given I verify grid "[1]" column "[3]" row "[2]" contains "Test"
 Given I wait for "3" seconds
 Given I verify grid "[1]" column "[6]" row "[2]" contains "09/28/2019"
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
 Given I verify grid "[1]" column "[6]" row "[1]" contains "09/28/2019"
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
Then I logout
Then I tear down
 
 
 
 
 

