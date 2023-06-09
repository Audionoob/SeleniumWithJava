@Saucedemo
Feature: sauceDemoTest

  Background: Navigate to user login page
    Given the user visits SauceDemo page

  Scenario Outline: Successful login
    When I enter my valid email "<email>"
    And I enter my password "<password>"
    When I make a click on the login button
    Then I should be redirected into the home page
    Examples:
      | email         | password     |
      | standard_user | secret_sauce |

@UnsuccessfulLogin
  Scenario Outline: Unsuccessful login
    When I make a click on the login button
    #Then an error message is displayed with text: <message>
    Then JSON an error message is displayed with text: <message>


  Examples:
  # TODO AÑADIR "@"
      | message                 |
      | PROPERTY_LOGIN_NO_USER |


