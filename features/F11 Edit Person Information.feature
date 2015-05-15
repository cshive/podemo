Feature: Edit Person Information

Scenario: Edit person name
Given I know which person I want to edit
And I am logged in to CTRP PO application
And I have searched for a person and found the one I wish to edit
And I have selected the function Edit Person
And I am on the edit person information screen
When I change the name of the person I wish to edit
And I submit my edit request
Then the system should change the person name in the person record to the new name
And my name should be listed as last update with the current date and time
And the person status should be Pending

Scenario: Edit person CTEP ID
Given I know which person I want to edit
And I am logged in to CTRP PO application
And I have searched for a person and found the one I wish to edit
And I have selected the function Edit Person
And I am on the edit person information screen
When I change the CTEP ID of the person I wish to edit
And I submit my edit request
Then the system should change the CTEP ID in the person record to the new CTEP ID
And my name should be listed as last update with the current date and time
And the person status should be Pending


Scenario: Edit person city
Given I know which person I want to edit
And I am logged in to CTRP PO application
And I have searched for a person and found the one I wish to edit
And I have selected the function Edit Person
And I am on the edit person information screen
When I change the city of the person I wish to edit
And I submit my edit request
Then the system should change the city in the person record to the new city
And my name should be listed as last update with the current date and time
And the person status should be Pending

Scenario: Edit person state
Given I know which person I want to edit
And I am logged in to CTRP PO application
And I have searched for a person and found the one I wish to edit
And I have selected the function Edit Person
And I am on the edit person information screen
When I change the state of the person I wish to edit
And I submit my edit request
Then the system should change the state in the person record to the new state
And my name should be listed as last update with the current date and time
And the person status should be Pending

Scenario: Edit person country
Given I know which person I want to edit
And I am logged in to CTRP PO application
And I have searched for a person and found the one I wish to edit
And I have selected the function Edit Person
And I am on the edit person information screen
When I change the country of the person I wish to edit
And I submit my edit request
Then the system should change the country in the person record to the new country
And my name should be listed as last update with the current date and time
And the person status should be Pending

Scenario: Edit person zip code
Given I know which person I want to edit
And I am logged in to CTRP PO application
And I have searched for an person and found the one I wish to edit
And I have selected the function Edit Person
And I am on the edit person information screen
When I change the zip code of the person I wish to edit
And I submit my edit request
Then the system should change the zip code in the person record to the new zip code
And my name should be listed as last update with the current date and time
And the person status should be Pending

Scenario: Edit persons with multiple parameters
Given I know which person I want to edit
And I am logged in to CTRP PO application
And I have searched for an person and found the one I wish to edit
And I have selected the function Edit Person
And I am on the edit person information screen
When I change multiple parameters of the person I wish to edit
And I submit my edit request
Then the system should change all the parameters in the person record
And my name should be listed as last update with the current date and time
And the person status should be Pending

