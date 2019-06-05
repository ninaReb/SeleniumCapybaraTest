

Feature: Products
Feature description Productstest ana


   
   Scenario: Verify product details page of a product image and color finish
        Given I am on logged as B2B on ferguson desktop site
        When I go to the Product Details page of the product 
        And I hover over on the product test image
        Then I should see the product test part zoom in a new window

@temp
   Scenario: Click on Print button for chrome
      Given I am on logged as B2B on ferguson desktop site
      When I go to the Product Details page of the product 
      And I click on the print button
      Then I should see a modal print be opened