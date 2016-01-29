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
  Scenario: On the account page the account age is displayed
    Given I am logged in as a user with the "authenticated user" role
    When I click "My account"
    Then I should see "Member for"
