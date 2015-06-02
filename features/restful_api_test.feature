Feature: Type a url that will invoke a restful service and get results
  Scenario: When somebody navigates to provided url he should get a restful response
    Given User navigates to provided url
     Then he should see some json response