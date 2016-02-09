Install tests in local evironment
=================================
You will need php5-curl package installed for the instructions below to complete.

  * git clone git@github.com:neontribe/blink_tests.git
  * `cd blink_tests`
  * `curl -sS https://getcomposer.org/installer | php`
  * `COMPOSER_BIN_DIR=bin php composer.phar require drupal/drupal-extension='~3.0'`
  * create a `behat.yml` with (replace the drupal_root with your local instance path and the base_url with your local site's base url):
  ```
default:
  suites:
    default:
      contexts:
        - FeatureContext
        - Drupal\DrupalExtension\Context\DrupalContext
        - Drupal\DrupalExtension\Context\MinkContext
        - Drupal\DrupalExtension\Context\MessageContext
        - Drupal\DrupalExtension\Context\DrushContext
  extensions:
    Behat\MinkExtension:
      goutte: ~
      selenium2: ~
      base_url: http://bananalink
    Drupal\DrupalExtension:
      blackbox: ~
      api_driver: 'drupal'
      drupal:
        drupal_root: /home/katja/public_html/bananalink
  ```

  * run `bin/behat --init`
  * see predefined steps by running: `bin/behat -di`

  * run tests with `bin/behat`
