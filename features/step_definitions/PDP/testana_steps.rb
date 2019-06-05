

When("I hover over on the product test image") do
    @pdpana_page.zomm_mouse_image
   end
  
  Then("I should see the product test part zoom in a new window") do
    @pdpana_page.zomm_mouse_image
    expect(page).to have_selector(:xpath, '/html/body/div[7]/div')
  end
  

# ------------PRINT VERIFICATION---------------------
When("I click on the print button") do
#  @pdpana_page.click_print_btn
 find('.down-pdf').click
  
end

Then("I should see a modal print be opened") do
  new_window = window_opened_by { click_button '.down-pdf' }
  within_window new_window do
    expect(page).to have_content('https://www.ferguson.com/product/moen-align-12-gpm-single-lever-handle-high-arc-lavatory-faucet-in-polished-chrome-m6190/_/R-4777709?searchK…')
    @pdpana_page.close_chrome_print_preview
    @login_page.logout
  end
end