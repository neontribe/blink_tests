Install tests in local evironment
=================================
You will need php5-curl package installed for the instructions below to complete.

  * git clone git@github.com:neontribe/blink_tests.git
  * `cd blink_tests`
  * `curl -sS https://getcomposer.org/installer | php`
  * `php composer.phar install`
  * `cp behat-example.yml behat.yml`
  * replace the drupal_root with your local instance path and the base_url with your local site's base url).
  * run `bin/behat --init`

  * see predefined steps by running: `bin/behat -di`
  * run tests with `bin/behat`
