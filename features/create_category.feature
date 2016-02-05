Feature: Create Category
    As a blog administrator
    In order to have mi posts organized
    I want to be able to create a categories to my blog

    Background:
     Given the blog is set up
     And I am logged into the admin panel

     Scenario: successfully create categories
     Given I am on the admin page
     When I follow "Categories"
     Then I should see "Categories"
     And I fill in "category_name" with "category1"
     And I fill in "category_keywords" with "test_post"
     And I fill in "category_description" with "The description of category1"
     And I press "Save"
     Then I should be on the categories new page
     And I should see "category1"
     When I follow "category1"
     Then I should be on categories edit page for category1
