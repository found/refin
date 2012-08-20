@businesses
Feature: Businesses
  In order to have businesses on my website
  As an administrator
  I want to manage businesses

  Background:
    Given I am a logged in refinery user
    And I have no businesses

  @businesses-list @list
  Scenario: Businesses List
   Given I have businesses titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of businesses
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @businesses-valid @valid
  Scenario: Create Valid Business
    When I go to the list of businesses
    And I follow "Add New Business"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 business

  @businesses-invalid @invalid
  Scenario: Create Invalid Business (without name)
    When I go to the list of businesses
    And I follow "Add New Business"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 businesses

  @businesses-edit @edit
  Scenario: Edit Existing Business
    Given I have businesses titled "A name"
    When I go to the list of businesses
    And I follow "Edit this business" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of businesses
    And I should not see "A name"

  @businesses-duplicate @duplicate
  Scenario: Create Duplicate Business
    Given I only have businesses titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of businesses
    And I follow "Add New Business"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 businesses

  @businesses-delete @delete
  Scenario: Delete Business
    Given I only have businesses titled UniqueTitleOne
    When I go to the list of businesses
    And I follow "Remove this business forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 businesses
 