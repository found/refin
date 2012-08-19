@programs
Feature: Programs
  In order to have programs on my website
  As an administrator
  I want to manage programs

  Background:
    Given I am a logged in refinery user
    And I have no programs

  @programs-list @list
  Scenario: Programs List
   Given I have programs titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of programs
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @programs-valid @valid
  Scenario: Create Valid Program
    When I go to the list of programs
    And I follow "Add New Program"
    And I fill in "Program Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 program

  @programs-invalid @invalid
  Scenario: Create Invalid Program (without program_name)
    When I go to the list of programs
    And I follow "Add New Program"
    And I press "Save"
    Then I should see "Program Name can't be blank"
    And I should have 0 programs

  @programs-edit @edit
  Scenario: Edit Existing Program
    Given I have programs titled "A program_name"
    When I go to the list of programs
    And I follow "Edit this program" within ".actions"
    Then I fill in "Program Name" with "A different program_name"
    And I press "Save"
    Then I should see "'A different program_name' was successfully updated."
    And I should be on the list of programs
    And I should not see "A program_name"

  @programs-duplicate @duplicate
  Scenario: Create Duplicate Program
    Given I only have programs titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of programs
    And I follow "Add New Program"
    And I fill in "Program Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 programs

  @programs-delete @delete
  Scenario: Delete Program
    Given I only have programs titled UniqueTitleOne
    When I go to the list of programs
    And I follow "Remove this program forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 programs
 