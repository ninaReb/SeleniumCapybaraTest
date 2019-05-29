# frozen_string_literal: true

Given('I am on logged as B2B on ferguson desktop site') do
  @login_page.Logon('akratz@mcfadyen.com', 'Admin1976')
  sleep 2
end

When('I go to the Product Details page of the product') do
  @header_page.FindSearch('M6190')
  
  @header_page.ClickFind_Button
  
end

Then('I should see the Product description section') do
  expect(page).to have_content(@pdpAna_page.getDescription)
end

Then('I should see the Product title') do
  expect(page).to have_content 'Moen Align™ 1.2 gpm Single Lever Handle High Arc Lavatory Faucet'
end

Then('I should see the Product code') do
  expect(page).to have_content(@pdpAna_page.getProduct_Code)
end

Then('I should see the Product item number') do
  expect(page).to have_content(@pdpAna_page.getProduct_Item)
end

Then('I should see the Product specifications') do
  expect(page).to have_content(@pdpAna_page.getSpecifications)
end

Then('I should see the Product Shipping Information') do
  expect(page).to have_content(@pdpAna_page.getShipping_Info)
  expect(page).to have_content(@pdpAna_page.getShipping_Info_Content)
end

Then('I should see the Product Quantity') do
  expect(page).to have_content(@pdpAna_page.getQuantity)
end

Then('I should see the Product ADA, Green and Lead Law Compliant icons') do
  expect(page).to have_content(@pdpAna_page.getLeadLawIcon)
  expect(page).to have_content(@pdpAna_page.getAdaIcon)
  expect(page).to have_content(@pdpAna_page.getGreenIcon)
end

Then('I should see the Product price') do
  expect(page).to have_content(@pdpAna_page.getPrice)
end

Then('I should see the Add to Cart button enabled') do
  expect(page).to have_content(@pdpAna_page.getAdd_To_Cart_Btn)
end

Then('I should see the Add to My List button enalbed') do
  expect(page).to have_content(@pdpAna_page.getAdd_To_Lists_Btn)
end

Then('I should see the Print button enabled') do
  expect(page).to have_content(@pdpAna_page.getPrintBtn)
end

Then('I should see the path where the product are in') do
  expect(page).to have_content(@pdpAna_page.getProduct_Path)
end

Then('I should see the product mark') do
  expect(page).to have_content(@pdpAna_page.getBrand_Logo)
end

Then('I should see the In Store Availability information') do
  expect(page).to have_content(@pdpAna_page.getIn_Store_Availability)
  expect(page).to have_content(@pdpAna_page.getIn_Store_Availability_Content)
end

Then('I should see the Frequently Purchased Together section') do
  expect(page).to have_content(@pdpAna_page.getFrequently_Purchased)
end

Then('I should see the Entire Collection section') do
  expect(page).to have_content(@pdpAna_page.getEntire_Collection)
end

When('I click on the product images options') do
  @pdpAna_page.click_ColorFinish_BNickel
end

Then('I should see the selected color characteristcs') do
  expect(page).to have_content 'Single Lever Handle High Arc Lavatory Faucet in Polished Chrome'
  expect(page).to have_content '(Pricing is for Polished Chrome)'
  expect(page).to have_content 'Color Finish	   Polished Chrome'
end

When('I click on product price drop-down') do
  @pdpAna_page.clickPricingDropDown
  @login_page.Logout
end

Then('I should see product price options') do
  expext(page).to have_content(@pdpAna_page.getProPricingOpt)
  expect(page).to have_content(@pdpAna_page.getListPricingOpt)
  expect(page).to have_content(@pdpAna_page.getNoPricingOpt)
end

When('I click on the No Pricing option') do
  @pdpAna_page.clickNoPricingOpt
end

Then('I should see the content {string} on the price place') do |pcontent|
  pcontent = 'Call us for price'
  expect(page).to have_content(pcontent)
end

When('I click on the Add to Cart button') do
  @pdpAna_page.clickAddToCartButton
end

Then('I should see a briefly message {string} with the Checkout Now link') do |cCartMsg|
  cCartMsg = 'item(s) added to Cart Checkout Now'
  expect(page).to have_content(cCartMsg)
  expect(page).to have_content(@pdpAna_page.getCheckoutMessageLink)
end

Then('I should see the cart icon be increased') do
  expect(@pdpAna_page.getCartAmount).to eq(1)
end

When('I click on the Add to My Lists button') do
  @pdpAna_page.clickAddToMyListsButton
end

Then('I should see the Add to My Lists modal be opened') do
  expect(page).to have_content(@pdpAna_page.getAddMyListModal)
end

When('I click on Check Other Stores link') do
  @pdpAna_page.clickCheck_Others_Info_Link
end

Then('I should see the Check Availability modal be opened') do
  expect(page).to have_content(@pdpAna_page.getCheckAvailabilityModal)
end

When("I click on See Whats Available link") do
  expect(page).to have_content(@pdpAna_page.clickSee_Whats_Available_Link)
end

When("I hover over on the product image") do
  @pdpAna_page.hoverMouse_Image
end

Then("I should see the product part zoom in a new window") do
  expext(page).to have_content(@pdpAna_page.getModalHoverImage)
end

