# features/search.feature
Feature: Search
  In order to search the site for a particular word
  As a website user
  I need to be able to search for a word

  Scenario: Searching for a page that does exist
    Given I am on the homepage
    When I fill in "edit-search-block-form--2" with "donate"
    And I press "edit-submit"
    Then I should see "Donate"

  Scenario: Searching for a page that does NOT exist
    Given I am on the homepage
    When I fill in "edit-search-block-form--2" with "qwertyuiop"
    And I press "edit-submit"
    Then I should see "Your search yielded no results"




