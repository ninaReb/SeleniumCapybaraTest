# frozen_string_literal: true

Given("I am on logged the ferguson login page") do
    @login_page.logon('test_123@mailinator.com', 'Admin123')
end
  
  When("I click to logout") do
    @login_page.logout 
  end
  
  Then("I should be able logout successfully") do
  #  using_wait_time 10 do
        expect(page).to have_selector('#header-login-hover', visible: true) #verificar
        expect(page).to have_current_path('https://www.ferguson.com/?DPSLogout=true', url: true)
   # end
   end