Feature: Admin Merge articles
 As a blog administrator
 In order to avoid multiple copies of related articles
 I want to be able to merge two article_password

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist:
      |id | title | body |
      |1| ArticleOne | Lorem ipsum |
      |2| ArticleTwo | Dolem posewm |

  Scenario: Successfully merge articles
   Given I am on the articles edit page for ArtucleOne
   When I fill in "merge_with" with "2"
   And I press "Merge"
   Then the article "ArticleOne" should have "body" having content "Loerem ipsum Dolem posewm"
