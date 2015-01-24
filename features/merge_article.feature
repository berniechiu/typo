Feature: Merge Articles
  As a blog administrator
  In order to avoid similar articles
  I want to be able to merge articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    Then the following articles exist
      | id | title     | body                 |
      | 2  | Article 1 | Lorem Ipsum          |
      | 3  | Article 2 | Lorem Ipsum Extended |

  Scenario: Successfully merge articles
    Given I am on the article page for "Article 1"
    And I fill in "merge_with" with "3"
    Then I press "Merge"
    And the article "Article 1" should have body "Lorem Ipsum Lorem Ipsum Extended"
