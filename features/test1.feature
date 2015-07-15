@smoke
Feature: Homepage
  As a user
  I want to visit the homepage
  So that I can access the various features on organization

  Scenario: Visit Homepage-first test
    Given I am on the homepage
    Then I should see "Organizations" as link
    Then I should see "link" on page
