
Given("I am logged on the Ferguson desktop site") do
    @login_page.Logon('test_123@mailinator.com', 'Admin123') 
    visit "https://www.ferguson.com/myAccount/dashboard"
    visit "https://www.ferguson.com/myAccount/myList"
end

When("I try to create hundred new Lists") do 
      3.times do |i|
         @mylist_page.Click_CreateNewList
         @mylist_page.Fill_ListName(i.to_s)
         @mylist_page.Click_Save
  end
end

Then("I should be able to create my hundred list successfully") do 
  using_wait_time 10 do
     #have_coexpect(page).to have_css('.js-group-or-list', :count => 2) #verificar
  #   expect(page).to have_selector('.js-group-or-list', :count => 2)
     expect(page).to have_content('test 1')
  end
  @login_page.Logout
end