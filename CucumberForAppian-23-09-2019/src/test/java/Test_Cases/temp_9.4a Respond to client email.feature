@9.4a_RespondtoEmail
Feature: Attach Documents to Client Service Request using Related Action-Attach Documents

  Background: Login to Appian environment
      Given I setup with "CHROME" browser
   When I set appian URL to "https://harbourvesttest.appiancloud.com/suite/portal/login.jsp"
   And I set appian version to "19.2"
   And I set appian locale to "en_US"
   Then I login with username "csaUser1"
  
   Scenario: Using Respond Related Action, User can send out an email
  
    Given I open "https://harbourvesttest.appiancloud.com/suite/sites/client-service"
    Given I wait for "10" seconds
    Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)" 
    Given I wait for "2" seconds
    #Given I populate field "Search" with "8642"
    #Given I wait for "2" seconds
    Given I sort grid "[1]" by column "Request Id" 
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Request Id" 
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[3]" row "[1]"
    Given I wait for "10" seconds
    Given I click on link "Related Actions"
    Given I wait for "2" seconds
    Given I click on record related action "Respond"
    Given I wait for "5" seconds
    Given I click on checkbox option "High"
    Given I wait for "5" seconds
    Given I toggle box "Email[2]" visibility
    Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[1]" with "srishakthim@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[2]" with "swetar@vuram.com"
   Given I wait for "5" seconds
   Given I populate field type "TEXT" named "[3]" with "Enter this comments to check Email Subject- 10/04/2019"
   Given I wait for "5" seconds
   Given I populate field type "PARAGRAPH" named "[1]" with "Enter this comments to check Email Body- 10/04/2019"
   Given I wait for "5" seconds 
   Given I clear field "Add Attachments"
   Given I wait for "5" seconds 
   #Given I populate picker field "[1]" with partially matching suggestions for "csa"
   Given I wait for "5" seconds 
   When I populate field type "FILE_UPLOAD" named "Add Attachments" with 
   | C:\Users\srishakthim\Pictures\Screenshots\Screenshot (7).png |
   | C:\Users\srishakthim\Pictures\Screenshots\Screenshot (7).png |
   When I wait for "10" seconds
   When I verify field "Add Attachments" contains validation message "More than one files has the same name. Please upload documents with different names"
   When I wait for "5" seconds
   When I clear field "Add Attachments"
   When I wait for "5" seconds
   When I clear field "Add Attachments"
   When I wait for "5" seconds
   When I populate field type "FILE_UPLOAD" named "Add Attachments" with "C:\Users\srishakthim\Pictures\Screenshots\Screenshot (7).png"
   When I wait for "5" seconds
   When I populate grid "[1]" column "[1]" row "[1]" with "Respond related document"
   When I wait for "5" seconds
    
   #Update Status based on two options which is not mandatory . Select Option as Pending Client Respose
   #Given I click on radio option "[2]"
   #Given I wait for "5" seconds
   Then I click on button "SEND"
   Then I click on button "Yes"
    Then I wait for "10" seconds
   
   #Navigate to Documents and view attachments
   Then I click on link "Documents"
   Then I wait for "10" seconds
   Then I populate field "[2]" with "Outgoing Email Attachments"
	 Then I wait for "5" seconds
    
   #Set the filters to select document category and sort the grid
   Given I verify grid "[1]" column "[1]" row "[1]" contains "Respond related document"
   Given I wait for "5" seconds
   Given I verify grid "[1]" column "[2]" row "[1]" contains "Outgoing Email Attachments"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Documents"
   Given I wait for "2" seconds
   Given I sort grid "[1]" by column "Category"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Uploaded By"
   Given I wait for "5" seconds
   Given I sort grid "[1]" by column "Uploaded On"
   Given I wait for "5" seconds
   Then I populate field "[2]" with "Incoming Email Attachments"
   Then I wait for "5" seconds
   Then I click on button "CLEAR"
   
   #Navigate to Emails Dashboard to see the Email Subject
   When I click on link "Emails"
   When I wait for "5" seconds
   Then I verify text "Enter this comments to check Email Subject- 10/04/2019" is present
   Then I wait for "5" seconds
   Then I click on link "Enter this comments to check Email Subject- 10/04/2019"
	 Then I wait for "5" seconds
	 Then I click on link "Enter this comments to check Email Subject- 10/04/2019"
	 Then I wait for "5" seconds
	 
	 #Verify the email subject in Records grid
	 Given I click on site page "CLIENT SERVICE REQUESTS"
    Given I wait for "5" seconds
    Given I clear field "Select Filter Set(s)" 
    Given I wait for "2" seconds
    Given I populate field "Search" with "8642"
    Given I wait for "2" seconds
    Given I sort grid "[1]" by column "Request Id" 
    Given I wait for "4" seconds
    Given I sort grid "[1]" by column "Request Id" 
    Given I wait for "4" seconds
    Given I click on grid "[1]" column "[5]" row "[1]" 
    Given I wait for "4" seconds
    Given I verify grid "[1]" column "[5]" row "[1]" contains "Enter this comments to check Email Subject- 10/04/2019"
    Given I wait for "10" seconds
	 Then I logout
	 Then I tear down
  

