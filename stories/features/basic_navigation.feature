Feature: Basic Navigation
  As a web user
  I want to navigate the web

  @exclude
  Scenario: Visit a page and click a link
    Given I am on the example page
    When I click the 'more information' link
    Then I should see "IANA" on the page



