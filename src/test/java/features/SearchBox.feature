Feature: SearchBox Functionality
#  SearchBox should Typeable where customer can enter valid product and select product to purchase
#  Amazon search box functionality should have a menu


#  Test Scenario/Scenario:
#  Test Case Design/ Scenario design: Step by step

  Background:
    Given user is landed on amazon homepage


  @SmokeTest @RegressionTest @pending
  Scenario: SearchBox functionality should work with a valid product name
    And user enter valid product name
    When user click on search button
    Then user should see the valid product appears

    #@pending
  @RegressionTest @pending
  Scenario: SearchBox functionality should not work with a Invalid product name
    And user enter Invalid product name
    When user click on search button
    Then user should see the partial matched product appears
    But user should not see the Invalid product appears

  @RegressionTest @pending
  Scenario: SearchBox functionality should work with a valid product name
    And user enter "Mask" valid product name
    When user click on search button
    Then user should see "Mask" the valid product appears

  @RegressionTest @pending
  Scenario: SearchBox functionality should work with a valid product name
    And user enter "Mask" valid product name for search
    When user click on search button
    Then user should see "Mask" the valid product appears after search


  @RegressionTest @pending
  Scenario Outline: SearchBox functionality should work with a valid product name using Scenario outline
    And user enter valid "<productName>" products name
    When user click on search button
    Then user should see the valid "<expectedProduct>" products appears

    Examples:
      | productName    | expectedProduct |
      | Mask           | Mask            |
      | Hand Sanitizer | Hand Sanitizer  |
      | iphone 14      | iphone 14       |


    #Scenario outline : To pass multiple set of data in one test case
  @RegressionTest @pending
  Scenario Outline: SearchBox functionality should work with a valid product name using Scenario outline
    And user enter valid "<product Name>" products name
    When user click on search button
    Then user should see the valid "<expected Product>" products appears "<age>"

    Examples:
      | product Name   | expected Product | age |
      | Mask           | Mask             | 23  |
      | Hand Sanitizer | Hand Sanitizer   | 45  |
      | iphone 14      | iphone 14        | 56  |


    #Data Table
  @RegressionTest
  Scenario: SearchBox functionality should work with a valid products name
    And user enter valid product name for search
      | product Name |
      | T-shirt      |
    When user click on search button
    Then user should see the valid product appears after search
      | Expected product Name |
      | T-shirt               |


  @RegressionTest @pending
  Scenario: Amazon user should login with valid credential
    And user enter valid user name & password
      | user name | password |
      | mahmud    | Test123  |
    When user click on signIn button
    Then user should see profile name


#  Scenario: Searching a valid product should show us available products qty

