Feature: Combo Products PDP Validation

   Feature description Products


        
 @temp
    Scenario: Verify product details page of a product image and color finish
        Given I am on logged as B2B on ferguson desktop site

        When I go to the Product Details page of the product 
        Then I should see the Product description section
        And I should see the Product title
        Then I should see the Product code
        Then I should see the Product item number
        Then I should see the Product specifications
        Then I should see the Product Shipping Information
        Then I should see the Product Quantity
        Then I should see the Product ADA, Green and Lead Law Compliant icons
        Then I should see the Product price
        Then I should see the Add to Cart button enabled
        Then I should see the Add to My List button enalbed
        Then I should see the Print button enabled
        Then I should see the path where the product are in
        Then I should see the product mark
        Then I should see the In Store Availability information
        Then I should see the Frequently Purchased Together section
        Then I should see the Entire Collection section
        Then I should see product price options
        
#click functions
        When I hover over on the product image
        Then I should see the product part zoom in a new window

        When I click on the product images options
        Then I should see the selected color characteristcs
     
        When I click on the No Pricing option
        Then I should see the content "Call us for price" on the price place

        When I click on the Add to Cart button
        Then I should see a briefly message "item(s) added to Cart Checkout Now" with the Checkout Now link
        And I should see the cart icon be increased

        When I click on the Add to My Lists button
        Then I should see the Add to My Lists modal be opened

        When I click on Check Other Stores link
        Then I should see the Check Availability modal be opened
        
        When I click on See Whats Available link
        Then I should see the Check Availability modal be opened