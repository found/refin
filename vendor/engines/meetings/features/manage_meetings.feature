@meetings
Feature: Meetings
  In order to have meetings on my website
  As an administrator
  I want to manage meetings

  Background:
    Given I am a logged in refinery user
    And I have no meetings

  @meetings-list @list
  Scenario: Meetings List
   Given I have meetings titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of meetings
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @meetings-valid @valid
  Scenario: Create Valid Meeting
    When I go to the list of meetings
    And I follow "Add New Meeting"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 meeting

  @meetings-invalid @invalid
  Scenario: Create Invalid Meeting (without title)
    When I go to the list of meetings
    And I follow "Add New Meeting"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 meetings

  @meetings-edit @edit
  Scenario: Edit Existing Meeting
    Given I have meetings titled "A title"
    When I go to the list of meetings
    And I follow "Edit this meeting" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of meetings
    And I should not see "A title"

  @meetings-duplicate @duplicate
  Scenario: Create Duplicate Meeting
    Given I only have meetings titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of meetings
    And I follow "Add New Meeting"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 meetings

  @meetings-delete @delete
  Scenario: Delete Meeting
    Given I only have meetings titled UniqueTitleOne
    When I go to the list of meetings
    And I follow "Remove this meeting forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 meetings
 