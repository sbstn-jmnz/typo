Feature: Admin Merge articles
 As a blog administrator
 In order to avoid multiple copies of related articles
 I want to be able to merge two article_password

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
      | id | title | body |
      | 3 | ArticleOne | Lorem ipsum |
      | 4 | ArticleTwo | Dolem posewm |
    And the following comments exist:
    | author | email            | body            | article_id |
    | Rohit  | rohit@gmail.com  | a lorem comment | 4          |

  Scenario: Successfully merge articles
   Given I am on the articles edit page for ArticleOne
   When I fill in "merge_with" with "4"
   And I press "Merge"
   Then the article "ArticleOne" should have "body" having content "Lorem ipsum Dolem posewm"
   And the article "ArticleOne" should have comments count equal to 1
