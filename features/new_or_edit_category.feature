Feature: Create or edit category
  As a blog administrater
  In order to categorize blogs
  I want to create or edit catogories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I go to the categories page

  Scenario: Succesfully render the categories page
    Given I am on the admin categories page
    Then I should see "Categories"
    And I should see "Title"
    And I should see "Description"
    And I should see "Permalink"
    And I should see "Keywords"

  Scenario: Successfully create a new category
    Given I am on the admin categories page
    When I fill in "Name" with "Rails"
    When I fill in "Permalink" with "rails"
    And I press "Save"
    Then I should see "Rails"
    And I should see "Category was successfully saved."

  Scenario: Successfully edit an existing category
    Given I am on the admin categories page
    When I follow "General"
    Then I fill in "Name" with "Trip"
    And I press "Save"
    Then I should see "Trip"


