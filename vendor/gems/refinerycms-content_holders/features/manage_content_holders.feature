@content_holders
Feature: Content Holders
  In order to have content_holders on my website
  As an administrator
  I want to manage content_holders

  Background:
    Given I am a logged in refinery user
    And I have no content_holders

  @content_holders-list @list
  Scenario: Content Holders List
   Given I have content_holders titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of content_holders
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @content_holders-valid @valid
  Scenario: Create Valid Content Holder
    When I go to the list of content_holders
    And I follow "Add New Content Holder"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 content_holder

  @content_holders-invalid @invalid
  Scenario: Create Invalid Content Holder (without title)
    When I go to the list of content_holders
    And I follow "Add New Content Holder"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 content_holders

  @content_holders-edit @edit
  Scenario: Edit Existing Content Holder
    Given I have content_holders titled "A title"
    When I go to the list of content_holders
    And I follow "Edit this content_holder" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of content_holders
    And I should not see "A title"

  @content_holders-duplicate @duplicate
  Scenario: Create Duplicate Content Holder
    Given I only have content_holders titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of content_holders
    And I follow "Add New Content Holder"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 content_holders

  @content_holders-delete @delete
  Scenario: Delete Content Holder
    Given I only have content_holders titled UniqueTitleOne
    When I go to the list of content_holders
    And I follow "Remove this content holder forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 content_holders
 