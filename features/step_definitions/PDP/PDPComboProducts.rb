#require 'PDPNina'

Given("I am on logged on Ferguson desktop site") do
    @login_page.logon('akratz@mcfadyen.com', 'Admin1976')
    sleep 2
  end
  
  When("I go to the Combo Product's Details page of the product") do
    @header_page.findSearch('PF1400TWH')
    @header_page.clickFind_Button
  end
  
  Then("I should see the Combo Product's description section") do
    expect(page).to have_content(@PdpNina.getDescription)
  end
  
  Then("I should see the Combo Product's title") do
    expect(page).to have_content(@PdpNina.getName)
  end
  
  Then("I should see the Combo Product's code") do
    expect(page).to have_content(@PdpNina.getCode)
  end
  
  Then("I should see the Combo Product's item number") do
    expect(page).to have_content(@PdpNina.getProductIdNumber)
  end
  
  Then("I should see the Combo Product's specifications") do
    expect(page).to have_content(@PdpNina.getSpecs)
  end
  
  Then("I should see the Combo Product's Shipping Information") do
    expect(page).to have_content(@PdpNina.getShippingInfo)
  end
  
  Then("I should see the Combo Product's Quantity") do
    expect(page).to have_content(@PdpNina.getQty)
  end
  
  Then("I should see the Combo Product's Green icon") do
    expect(page).to have_content(@PdpNina.getGreen)
  end
  
  Then("I should see the Combo Product's price") do
    expect(page).to have_content(@PdpNina.getPrice)
  end
  
  Then("I should see the Combo Product's Add to Cart button enabled") do
    expect(page).to have_content(@PdpNina.getAddToCartBtn)
  end
  
  Then("I should see the Combo Product's Add to My List button enabled") do
    expect(page).to have_content(@PdpNina.getAddToListsBtn)
  end
  
  Then("I should see the Combo Product's Print button enabled") do
    expect(page).to have_content(@PdpNina.getPrintBtn)
  end
  
  Then("I should see the Combo Product's breadcrumbs") do
    expect(page).to have_content(@PdpNina.getBreadcrumbs)
  end
  
  Then("I should see the Combo Product's Brand Logo") do
    expect(page).to have_content(@PdpNina.getBrandLogo)
  end
  
  Then("I should see the Combo Product's Store Availability information") do
    expect(page).to have_content(@PdpNina.getAvailability)
  end
  
  Then("I should see the Combo Product's Frequently Purchased Together Section") do
    expect(page).to have_content(@PdpNina.getFrequentlyPurchased)
  end
  
  Then("I should see the Combo Product's Recommended section") do
    expect(page).to have_content(@PdpNina.getRecommendedAccessories)
  end
  
  Then("I should see the Combo Product's Entire Collection section") do
    expect(page).to have_content(@PdpNina.getEntireCollection)
  end
  
  Then("I should see Combo Product's Bundle Price") do
    expect(page).to have_content(@PdpNina.getBundlePrice)
  end
  
#   When("I hover over on the Combo Product's image") do
#     #@PdpNina.getImgContainer.trigger(:mouseover)
#     #find('body > div.zoomContainer').hover
  
#   Then("I should see the Combo Product's image zoomed in a new window") do
#     expect(page).to have_content(@PdpNina.getZoomedImg)
#   end
  