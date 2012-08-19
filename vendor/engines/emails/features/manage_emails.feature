@emails
Feature: Emails
  In order to have emails on my website
  As an administrator
  I want to manage emails

  Background:
    Given I am a logged in refinery user
    And I have no emails

  @emails-list @list
  Scenario: Emails List
   Given I have emails titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of emails
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @emails-valid @valid
  Scenario: Create Valid Email
    When I go to the list of emails
    And I follow "Add New Email"
    And I fill in "Subject" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 email

  @emails-invalid @invalid
  Scenario: Create Invalid Email (without subject)
    When I go to the list of emails
    And I follow "Add New Email"
    And I press "Save"
    Then I should see "Subject can't be blank"
    And I should have 0 emails

  @emails-edit @edit
  Scenario: Edit Existing Email
    Given I have emails titled "A subject"
    When I go to the list of emails
    And I follow "Edit this email" within ".actions"
    Then I fill in "Subject" with "A different subject"
    And I press "Save"
    Then I should see "'A different subject' was successfully updated."
    And I should be on the list of emails
    And I should not see "A subject"

  @emails-duplicate @duplicate
  Scenario: Create Duplicate Email
    Given I only have emails titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of emails
    And I follow "Add New Email"
    And I fill in "Subject" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 emails

  @emails-delete @delete
  Scenario: Delete Email
    Given I only have emails titled UniqueTitleOne
    When I go to the list of emails
    And I follow "Remove this email forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 emails
 