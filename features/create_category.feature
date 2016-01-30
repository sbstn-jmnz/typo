Feature: Create Category
    As a blog administrator
    In order to have mi posts organized
    I want to be able to create a Category

    Background:
     Given the blog is set up
     And I am logged into the admin panel

     Scenario: Create a Category
     Given I am on the admin page
     When I follow "Categories"
     Then I should see "Categories"
