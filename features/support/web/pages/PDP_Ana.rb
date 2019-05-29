# frozen_string_literal: true

class PdpAnaPage
  include Capybara::DSL

  # Sections
  def setSections
    @Description = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/div[2]')
    @Brand_Logo = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[1]/img')
    @Price = find(:xpath, '//*[@id="singleForm"]/div[2]')
    @Frequently_Purchased =  find(:xpath, '//*[@id="js-bundle-builder-form"]/div[4]~')
    @Recommended_Accessories = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[3]/div')
    @Entire_Collection = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[4]/div/div[1]')
    @Documents = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[2]')
    @Anon_User_Banner = find(:xpath, '#wrapper > main > div > div.row > div.col-lg-4.col-md-4 > div.pro-docs > ul > li:nth-child(1) > a')
    @Specifications = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[2]')
    @Breadcrumbs = find(:xpath, '//*[@id="wrapper"]/main/div/div[1]')
    @Color_finish = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[1]/div')
    @Zoom_Image_Container = find(:xpath, '/html/body/div[6]')
    @Product_Images = find(:xpath, '//*[@id="js-thumb-img"]')
    @Product_Code = find(:xpath, '#wrapper > main > div > div.row > div.col-lg-8.col-md-8 > div > div:nth-child(2) > div.product-info > p.pro-id')
    # by Ana
    @Product_Item = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[1]/p[3]')
    @Shipping_Info = find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[3]')
    @Shipping_Info_Content = find('js_inventory_state')
    @In_Store_Availability = find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[1]')
    @In_Store_Availability_Content = find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[2]/p[1]')
    @Icon_Ada = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[1]')
    @Icon_Green = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[2]')
    @Icon_LeadLaw = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[3]')
    @Product_Path = find(:xpath, '//*[@id="wrapper"]/main/div/div[1]')
    @ProPricingOpt = find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div/div[2]/div/ul/div/li[1]')
    @ListPricingOpt = find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div/div[2]/div/ul/div/li[2]')
    @NoPricingOpt = find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div/div[2]/div/ul/div/li[3]')
  end

  # Buttons
  def setButtons
    @Entire_Collection_View_All_Button = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[4]/div/div[1]/a')
    @Entire_Collection_Right_Arrow = find('#wrapper > main > div > div.row > div.entire-collection.row > div > div.carousel-head > div > a.pager-next')
    @Entire_Collection_Left_Arrow = find('#wrapper > main > div > div.row > div.entire-collection.row > div > div.carousel-head > div > a.pager-prev')
    @Add_To_Cart_Button = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div[4]/input[9]')
    @Print = find('#js-down-pdf')
    @Add_To_Lists_Button = find('#singleForm > div.total-content > div.total-button > input.button.tertiary.form-control.js-pls-select-sku')
    @Add_To_Cart_Button = find('#singleForm > div.total-content > div.total-button > input.button.primary.form-control.js-pls-select-sku')
    @Expand_Specifications_Arrow = find('#wrapper > main > div > div.row > div.col-lg-8.col-md-8 > p > a')
    @Second_Image_Thumbnail = find('#js-thumb-img > a:nth-child(2) > img')
    @First_Image_Thumbnail = find('#js-thumb-img > a.active > img')
    @First_Color = find('#js-pls-select-container > a:nth-child(1) > img')
    @Second_Color = find('#js-pls-select-container > a:nth-child(2) > img')
    # By Ana
    @Pricing_Btn = find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div')
  end

  # Checkboxes
  def setCheckboxes
    @Combo_Product_First_Checkbox = find(:xpath, '#js-bundle-builder-form > div.bundle-builder > div.product-select > div:nth-child(1) > p > label')
  end

  # Links
  def setLinks
    @Anon_Register_Link = find(:xpath, '//*[@id="singleSku-productTotal"]/div/a[1]')
    @Anon_Login_Link = find(:xpath, '//*[@id="singleSku-productTotal"]/div/a[2]')
    # by Ana
    @Check_Others_Info = find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[2]/p[2]/a')
    @See_Whats_Available = find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[4]/p[2]/a')
  end

  # Select lists
  def setSelects
    @Type_or_Size_Select = find('#js-pls-select-container > span > div > div.sim-head > span.current')
  end

  # By Ana - Fields
  def SetFields
    @Quantity = find(:xpath, '//*[@id="singleForm"]/div[2]/div[2]/ul/li[2]/fieldset/dl/dd/input[1]')
  end


  # ----------------------
  def clickCheck_Others_Info_Link
    @Check_Others_Info.click
  end

  def clickSee_Whats_Available_Link
    @See_Whats_Available.click
  end

  def hoverMouse_Image
    image = find(:xpath, '/html/body/div[6]')
    image.hover
  end
 
  def getModalHoverImage #verificar qual é o elemento certo da modal que aparece no hover do mouse
    find(:xpath, '//*[@id="destination_publishing_iframe_ferguson_0"]')
  end

  def click_ColorFinish_PChrome
    find('img[title="Polished Chrome"]').click
  end

  def click_ColorFinish_MBlack
    find('img[title="Matte Black"]').click
  end

  def click_ColorFinish_BNickel
    find('img[title="Brushed Nickel"]').click
  end

  def click_ProdVideo
    find('img[data-video="300770755"]').click
  end

  def click_FirstProdImage
    find('img[itemprop="contentUrl", data-index="0"]').click
  end

  def click_SecondProdImage
    find('img[itemprop="contentUrl", data-index="1"]').click
  end

  def clickAddToCartButton
    @Add_To_Cart_Button.click
  end

  def clickViewAllInCollection
    @Entire_Collection_View_All_Button.click
  end

  def checkComboProduct
    @Combo_Product_First_Checkbox.click
  end

  def clickPrint
    @Print.click
  end

  def clickAddToMyListsButton
    @Add_To_Lists_Button.click
  end

  def clickEntireCollectionViewAll
    @Entire_Collection_View_All_Button.click
  end

  def clickExpandSpecifications
    @Expand_Specifications_Arrow.click
  end

  def clickFirstImage
    @First_Image_Thumbnail.click
  end

  def clickSecondImage
    @Second_Image_Thumbnail.click
  end

  def clickEntireCollectionRightArrow
    @Entire_Collection_Right_Arrow.click
  end

  def clickEntireCollectionLeftArrow
    @Entire_Collection_Left_Arrow.click
  end

  # By Ana - get components
  def clickPricingDropDown
    @Pricing_Btn.click
  end

  def clickNoPricingOpt
    @NoPricingOpt.click
  end

  #GET
  def getCheckAvailabilityModal
    find(:xpath, '//*[@id="checkStores"]/div/div')
  end

   def getDescription
    @Description
  end

  def getProduct_Code
    @Product_Code
  end

  def getProduct_Item
    @Product_Item
  end

  def getSpecifications
    @Specifications
  end

  def getShipping_Info
    @Shipping_Info
  end

  def getShipping_Info_Content
    @Shipping_Info_Content
  end

  def getQuantity
    @Quantity
  end

  def getAdaIcon
    @Icon_Ada
  end

  def getGreenIcon
    @Icon_Green
   end

  def getLeadLawIcon
    @Icon_LeadLaw
  end

  def getPrice
    @Price
  end

  def getAdd_To_Cart_Btn
    @Add_To_Cart_Button
  end

  def getAdd_To_Lists_Btn
    @Add_To_Lists_Button
  end

  def getPrintBtn
    @Print
  end

  def getProduct_Path
    @Product_Path
  end

  def getBrand_Logo
    @Brand_Logo
  end

  def getIn_Store_Availability
    @In_Store_Availability
  end

  def getIn_Store_Availability_Content
    @In_Store_Availability_Content
  end

  def getFrequently_Purchased
    @Frequently_Purchased
  end

  def getEntire_Collection
    @Entire_Collection
  end

  def getProPricingOpt
    @ProPricingOpt
  end

  def getListPricingOpt
    @ListPricingOpt
  end

  def getNoPricingOpt
    @NoPricingOpt
  end

  def getCheckoutMessageLink
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[3]/a')
  end

  def clickCheckoutMessageLink
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[3]/a').click
  end

  def getCartAmount
   find(:xpath, '//*[@id="wrapper"]/header/div[4]/div[3]/ul/li[2]/a/span/span[2]')
  end

  def getAddMyListModal
   find(:xpath, '//*[@id="wishListModal"]/div/div')
  end
end
