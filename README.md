Install tests in local evironment
=================================
You will need php5-curl package installed for the instructions below to complete.

  * git clone git@github.com:neontribe/blink_tests.git
  * `cd blink_tests`
  * `curl -sS https://getcomposer.org/installer | php`
  * `composer install`
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

*************************************************************************


INSTALL SELENIUM

Selenium allows 'real browser' emulator testing.

These instructions follow http://docs.behat.org/en/v2.5/cookbook/behat_and_mink.html#test-in-browser-selenium2-session .

To set up, first you need Java JDK installed (skip if you already have this):

  * run `sudo apt-get install default-jdk`

Then you install Selenium server:

  * go to: http://docs.seleniumhq.org/download/
  * on 'Selenium Standalone Server' section, download the latest version (2.51.0 as of 08-02-2016)
  * save the .jar file to the blink_tests folder

Then you run selenium server:

  * from the terminal, run `java -jar selenium-server-*.jar`. This starts the Selenium server.

...Then simply run bin/behat from another terminal for testing.

(N.B. Might be easier to share this .jar via Git as a common library. But not currently being done.)

A NOTE ON RUNNING SELENIUM TESTS

To run the Selenium browser emulator during tests, the relevant scenario/s in you feature/s must have a @javascript on it. Good, further instructions here: http://docs.behat.org/en/v2.5/cookbook/behat_and_mink.html#test-in-browser-selenium2-session .
