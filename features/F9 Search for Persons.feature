Feature: Search for person

Scenario: Search for persons by name
Given I know the name of the person I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the full or partial name of the person I wish to search for
And I submit my search request
Then the system should display all person records that contain the name

Scenario: Search for persons by CTEP ID
Given I know the CTEP ID of the person I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the CTEP ID of the person I wish to search for
And I submit my search request
Then the system should display all persons that exactly match the CTEP ID

Scenario: Search for persons by PO ID
Given I know the PO ID of the person I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the PO ID of the person I wish to search for
And I submit my search request
Then the system should display all persons that exactly match the PO ID


Scenario: Search for persons by city
Given I know the name of the city I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the full or partial city of the person I wish to search for
And I submit my search request
Then the system should display all person records that contain the city

Scenario: Search for persons by state
Given I know the name of the state I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the full or partial state of the person I wish to search for
And I do not modify the U.S. country default
And I submit my search request
Then the system should display all person records that contain the state in the U.S.

Scenario: Search for persons by country
Given I know the name of the country I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the full or partial country of the person I wish to search for
And I submit my search request
Then the system should display all person records that contain the country

Scenario: Search for persons by zip code
Given I know the name of the zip code I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the full zip code of the person I wish to search for
And I submit my search request
Then the system should display all person records that contain the zip code

Scenario: Search for persons by phone number
Given I know the phone number I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the phone number of the person I wish to search for
And I submit my search request
Then the system should display all person records that contain the phone number

Scenario: Search for persons by <person_type>
Given I know the name of the <person_type> I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I select the <person_type> of the person I wish to search for
And I submit my search request
Then the system should display all person records that have the <organzation_type>

|person_type    |
|Principal Investigator    |
|Submitter |
|Site Contact   |
|CTRP User |

Scenario: Search for persons with multiple parameters
Given I know multiple parameters of the person I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the parameters of the person I wish to search for
And I submit my search request
Then the system should display all person records that contain all of the entered parameters

Scenario: Search for persons by curator date
Given I know the name of the curator date I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the curator date of the person I wish to search for
And I submit my search request
Then the system should display all person records that contain the curator date

Scenario: Search for persons by curator name
Given I know the name of the curator name I wish to search for
And I am logged in to CTRP PO application
And I am on the search person records screen
When I provide the curator name of the person I wish to search for
And I submit my search request
Then the system should display all person records that contain the curator name

