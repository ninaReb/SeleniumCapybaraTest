
Given("I am logged in on the Ferguson desktop site") do
    visit "https://ferguson.com"
    @login_page.Logon('test_123@mailinator.com', 'Admin123')
  end
  
  When("I type A7430801 on the search field") do  
    @header_page.FindSearch("A7430801")
  end
    
  When("I click on Search button") do
    @header_page.ClickFind_Button
  end
    
  Then("I should see the product's PDP with the correct sections") do

    expect(page).to have_selector(@PdpPageNina.Product_Code, visible: true)
  
    @login_page.Logout
  end