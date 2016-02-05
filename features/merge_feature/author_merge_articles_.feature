Feature: Author Merge Articles
  As an author
  I should not be able to merge Articles

  Background:
    Given the blog is set up
    And as an author I am logged into the admin panel
    And the following articles exist:
    | id | title    | body              |
    | 1  | Article1 | Lorem epsum.      |

    Scenario: Editing an article
     Given I am on the articles edit page for Article1
     Then I should not see field "merge_with"
     And I should not see button "Merge"
