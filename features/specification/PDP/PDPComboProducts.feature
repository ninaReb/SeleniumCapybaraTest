Feature: Combo Product PDP Validation

   Feature description Products
   
    Scenario: PDP Validation Nina
        Given I am on the Ferguson desktop site
        When I type A7430801 on the search field
        And I click on Enter button
        Then I should see the results I searched
