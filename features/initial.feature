Feature: initial
  In order to make sure the site has built with the blink_theme
  As an anonymous user
  I want to see the company reg in the footer
  As an authenticated user
  I want to see my member since date on my profile page

  Scenario: The installer should have included a footer with the reg no
    Given I am an anonymous user
    Given I am on the homepage
    Then I should see "Registration Number 03144239"

  @api
  Scenario: On the Add content page I should be able to add a Testimony
    Given I am logged in as a user with the "editor" role
    When I go to "/node/add"
    Then I should see "Testimony"
