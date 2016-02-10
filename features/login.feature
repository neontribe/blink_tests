# features/login.feature
Feature: Log in
  In order to administer the site securely
  As an administrator
  I need to be able to log in securely

#MIGHT NOT WORK
#region region-page-bottom
# admin-menu
#admin-menu-wrapper
# admin-menu-account
  Scenario: Logging in successfully as admin
    Given I am on "/user"
    When I fill in "edit-name" with "admin"
    And I fill in "edit-pass" with "pineapple"
    And I press "edit-submit"
    Then I should see "admin"
    And I should see "Member for"
    And I should see "Log out"
	# could update this so it says 'When I click "About us" in the "footer" region
	# behat-drupal-extension.readthedocs.org/en/lates/blackbox.html

#in progress #could-add-javascript-to-this
# could use @javascript or @mink:selenium2
#@javascript
  Scenario: Logging in unsuccessfully as admin due to incorrect password
    Given I am on "/user"
    When I fill in "edit-name" with "admin"
    And I fill in "edit-pass" with "the_wrong_password"
    And I press "edit-submit"
    Then I should see "Enter the password that accompanies your username."
    And I should see a red box highlighted around the username
        # And I should see that the class has changed JUST FOR username. Need to write JS for this.
		# class changes from 'form-text required' to 'form-text required error'
		# use something like: if() document.getElementById("edit-name").className.contains("error")...

#could-add-javascript-to-this-here
  Scenario: Logging in unsuccessfully due to incorrect username
    Given I am on "/user"
    When I fill in "edit-name" with "the_wrong_username"
    And I fill in "edit-pass" with "an_irrelevant_password"
    And I press "edit-submit"
    Then I should see "Log in"
    And I should see "Enter the password that accompanies your username."
        # And I should see that the class has changed JUST FOR username. (See above scenario.)

#could-add-javascript-to-this
  Scenario: Logging in unsuccessfully as both username and password fields are left blank
    Given I am on "/user"
    When I press "edit-submit"
    Then I should see "Enter the password that accompanies your username."
        # And I should see that the class has changed FOR BOTH username and password. (See above scenario.)

# COULD DO - (2) test(s):  wrong/correct username, but blank password test

  Scenario: Logging in successfully as admin, and then logging out
    Given I am on "/user"
    When I fill in "edit-name" with "admin"
    And I fill in "edit-pass" with "pineapple"
    And I press "edit-submit"
    Then I should see "admin"
    When I follow "Log out"
    Then I should not see "Log out"
