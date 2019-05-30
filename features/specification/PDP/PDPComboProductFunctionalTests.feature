Feature: Combo Products PDP Functional Validation

   Page Validation for a product with Combo options
    @NinaTest
    @ComboFunctional

    Scenario: Testing Color Selection
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page  
        When I click on a color option for the product
        Then I should see the product change to the color variant selected
        
    #Scenario: Testing Size Selection
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page  
        When I pick a size option for the product
        Then I should see the product change to the size variant selected

    #Scenario: Testing Image zoom
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page
        When I hover over the main Image
        Then I should see the zoomed image pop up

    #Scenario: Testing Specs Arrow
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page 
        When I Click the blue arrow in the Specifications section
        Then I should see the Combo Product's Specifications section expanded

    #Scenario: Testing Add to Cart Button
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page  
        When I click on the Add to Cart button
        Then I should see a briefly message "item(s) added to Cart Checkout Now" with the Checkout Now link

    #Scenario: Testing Add To my Lists Button
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page  
        When I click on Add To my Lists Button
        Then I should see the Add To My Lists modal

    #Scenario: Testing View All in Entire Collections
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page 
        When I click on the View All link 
        Then I should see the collection page 

    #Scenario: Testing View All in Entire Collections
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page 
        When I click on the View All link 
        Then I should see the collection page

    #Scenario: Testing FPT first Checkbox 
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page 
        When I click on the first Checkbox on the Frequently Purchased Together section
        And I click the checkbox again
        Then I should see the all checkboxes active

    #Scenario: Testing Add to Cart Button in FPT section
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page  
        When I click on the Add to Cart button in the Frequently Purchased Together section
        Then I should see the cart page
        And I should see all the products from the FTP version added to cart

    #Scenario: Testing Entire Collection Right Arrow
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page  
        When I click on the Right-side arrow in the Entire collection section
        Then I should see the products shift

    #Scenario: Testing Entire Collection Left Arrow
        Given I am on logged on Ferguson desktop site
        When I go to the Combo Product's Details page  
        When I click on the Left-side arrow in the Entire collection section
        Then I should see the products shift

