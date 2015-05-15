Feature: Group Organizations

Scenario: Assign an organization to an Organization Group
Given I know which organization I wish to assign to an Organization Group
And I am logged in to CTRP PO application
And I am on the Organization Group screen
And a list of Organization Group Names is displayed
When I select an Organization Name
And I an Organization Group
And I select either Organization or Affiliate Organization Type 
Then a record is created with the Organization Group, the Organization Name, and the Organization Group Type

Scenario: Remove an organization from an Organization Group
Given I know which organization I wish to remove from an Organization Group
And I am logged in to CTRP PO application
And I am on the Organization Group screen
And a list of Organization Group Names with associated Organization Names and Organization Group Type is displayed
When I select an Organization Group Name, Organization Name, and Organization Group Type
And I select Delete
Then the record with Organization Group, the Organization Name, and the Organization Group Type is deleted

