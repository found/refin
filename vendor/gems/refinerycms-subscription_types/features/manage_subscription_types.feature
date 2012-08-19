@subscription_types
Feature: Subscription Types
  In order to have subscription_types on my website
  As an administrator
  I want to manage subscription_types

  Background:
    Given I am a logged in refinery user
    And I have no subscription_types

  @subscription_types-list @list
  Scenario: Subscription Types List
   Given I have subscription_types titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of subscription_types
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @subscription_types-valid @valid
  Scenario: Create Valid Subscription Type
    When I go to the list of subscription_types
    And I follow "Add New Subscription Type"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 subscription_type

  @subscription_types-invalid @invalid
  Scenario: Create Invalid Subscription Type (without title)
    When I go to the list of subscription_types
    And I follow "Add New Subscription Type"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 subscription_types

  @subscription_types-edit @edit
  Scenario: Edit Existing Subscription Type
    Given I have subscription_types titled "A title"
    When I go to the list of subscription_types
    And I follow "Edit this subscription_type" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of subscription_types
    And I should not see "A title"

  @subscription_types-duplicate @duplicate
  Scenario: Create Duplicate Subscription Type
    Given I only have subscription_types titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of subscription_types
    And I follow "Add New Subscription Type"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 subscription_types

  @subscription_types-delete @delete
  Scenario: Delete Subscription Type
    Given I only have subscription_types titled UniqueTitleOne
    When I go to the list of subscription_types
    And I follow "Remove this subscription type forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 subscription_types
 