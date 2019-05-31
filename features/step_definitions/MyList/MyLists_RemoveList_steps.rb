When("I try to delete my Lists") do
        visit "https://www.ferguson.com/myAccount/myList"

    60.times do
        @mylist_page.Click_MoreActions
        @mylist_page.Click_MoreActionsDelete
        @mylist_page.Click_YesBtnDeleteList
    end
  end
  
  Then("I should be able to delete my list successfully") do
    expect(page).to have_text('list(s) deleted') 
    @login_page.logout
  end
  