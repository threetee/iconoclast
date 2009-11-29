Feature: Version
  In order to test the Iconoclast gem
  As a user
  I want to be told the version of the Iconoclast gem
  
  Scenario: Get application version
    When I call the Iconoclast version method
    Then the result should be 0.0.1