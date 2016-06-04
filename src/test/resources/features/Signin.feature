@signin
Feature: Signin
  In order to use advanced features of  Postcrossing app, 
  As a user
  I want to sign in to the app with valid credentials

Scenario Outline: Sign-in with valid credentials
    Given I am on the Sign-in page
    When I submit username "<username>" and password "<password>"  
    Then I should see Home page
Examples:
  | username      | password    | 
  | Valid         | Valid       |
 
Scenario Outline: Login with invalid credentials
    Given I am on the Sign-in page  
    When I submit username "<username>" and password "<password>" 
    Then I see error message "Wrong username or password "
Examples:
  | username      | password     | 
  | Valid         | invalid      |
  | Valid         | empty        | 
  | empty         | Valid        | 
  | empty         | empty        | 

  Scenario: Sign-out after successfull sign in
    Given I am on the Home page
    When I click Sign out button 
    Then I  Sign in page
  
  
  
  
  