Feature: RemoveList

   Feature description Removing my list
   

   Scenario: Removing Lists
        Given I am logged on the Ferguson desktop site
        When I try to delete my Lists
        Then I should be able to delete my list successfully