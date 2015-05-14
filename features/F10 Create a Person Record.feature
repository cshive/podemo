Feature: Create a Person Record

Scenario: Create a Person Record
Given I am logged in to CTRP PO application
And I am on the create person screen
And I know the name of the person I wish to create
When I provide the full name of the person I wish to create
And I provide the CTEP ID of the person I wish to create which may be null
And I provide the city of the person I wish to create
And I provide the state of the person I wish to create
And I provide the country of the person I wish to create
And I provide the zip code of the person I wish to create
And I submit my create request
Then the system should create a person record that contains a unique PO ID, the person name, the CTEP ID, the city, the state, the country, the zip code, my name, and the current date and time
And the person status should be Pending


Scenario: Create a Person Record with duplicate Person Name
Given I am logged in to CTRP PO application
And I am on the create person screen
And I know the name of the person I wish to create
When I provide the full name of the person I wish to create
And I provide the CTEP ID of the person I wish to create which may be null
And I provide the city of the person I wish to create
And I provide the state of the person I wish to create
And I provide the country of the person I wish to create
And I provide the zip code of the person I wish to create
And I submit my create request
And there is a person record in CTRP with the same name
Then the system will notify me that the Person Name is a duplicate
And I will be able to change the person name and resubmit

Scenario: Create a Person Record with duplicate CTEP ID
Given I am logged in to CTRP PO application
And I am on the create person screen
And I know the name of the person I wish to create
When I provide the full name of the person I wish to create
And I provide the CTEP ID of the person I wish to create which may be null
And I provide the city of the person I wish to create
And I provide the state of the person I wish to create
And I provide the country of the person I wish to create
And I provide the zip code of the person I wish to create
And I submit my create request
And there is a person record in CTRP with the same CTEP ID
Then the system will notify me that the CTEP ID is a duplicate
And I will be able to change the CTEP ID and resubmit



		|


