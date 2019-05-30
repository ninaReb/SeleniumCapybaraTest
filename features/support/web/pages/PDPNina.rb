class PdpNina
  include Capybara::DSL

  #Sections
  def setSections
    @Product_Id_Number = find('#wrapper > main > div > div.row > div.col-lg-8.col-md-8 > div > div:nth-child(2) > div.product-info > p:nth-child(3)')
    @zoomed_Img = find('body > div.zoomWindowContainer > div')
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
    @Product_Code = find( '#wrapper > main > div > div.row > div.col-lg-8.col-md-8 > div > div:nth-child(2) > div.product-info > p.pro-id')
    @Store_Availability = find('#singleForm > div.total-content > div.available-store > div:nth-child(2) > p:nth-child(1)')
    @Shipping_Info = find('#singleForm > div.total-content > div.available-store > div.as-head.mt-25')
    @Product_Name = find('#wrapper > main > div > div.row > div.col-lg-8.col-md-8 > div > div:nth-child(2) > div.product-info > p.pro-name')
    @Product_Qty = find('#singleForm > div.total-content > div.total-qty')
    @Icon_Ada = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[1]')
    @Icon_Green = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[2]')
    @Icon_LeadLaw = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[3]')
    @Pricing_Options = find('#singleForm > div.total-content > div.total-price > div.js-prices-toggle.price-view-type > div > span > div > div.sim-list')
    @Bundle_Price = find('#js-bundle-builder-form > div.bundle-builder > div.product-row.clearfix > div.total-price')
  end

  def getBundlePrice
    @Bundle_Price
  end
  def getPricingOptions
    @Pricing_Options
  end
  def getLeadLaw
    @Icon_LeadLaw
  end
  def getGreen
    @Icon_Green
  end
  def getAda
    @Icon_Ada
  end
  def getQty
    @Product_Qty
  end
  def getProductIdNumber
    @Product_Id_Number
  end
  def getDescription
    @Description
  end
  def getZoomedImg
    @zoomed_Img
  end
  def getBrandLogo
    @Brand_Logo
  end
  def getPrice
    @Price
  end
  def getFrequentlyPurchased
    @Frequently_Purchased
  end
  def getRecommendedAccessories
    @Recommended_Accessories
  end
  def getEntireCollection
    @Entire_Collection
  end
  def getDocuments
    @Documents
  end
  def getAnonBanner
    @Anon_User_Banner
  end
  def getSpecs
    @Specifications
  end
  def getBreadcrumbs
    @Breadcrumbs
  end
  def getColorFinish
    @Color_finish
  end
  def getImgContainer
    @Zoom_Image_Container
  end
  def getImages
    @Product_Images
  end
  def getCode
    @Product_Code
  end
  def getAvailability
    @Store_Availability
  end
  def getShippingInfo
    @Shipping_Info
  end
  def getName
    @Product_Name
  end

  


  #Buttons
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
  end

  def getPrintBtn
    @Print
  end
  def getAddToCartBtn
    @Add_To_Cart_Button
  end  
  def getEntireCollectionViewAllBtn
    @Entire_Collection_View_All_Button
  end
  def getEntireCollectionRightBtn
    @Entire_Collection_Right_Arrow
  end
  def getEntireCollectionLefttBtn
    @Entire_Collection_Left_Arrow
  end
  def getAddToListsBtn
    @Add_To_Lists_Button
  end
  def getExpandSpecsArrow
    @Expand_Specifications_Arrow
  end
  def getSecondImgBtn
    @Second_Image_Thumbnail
  end
  def getFirstImgBtn
    @First_Image_Thumbnail
  end
  def getFirstColor
    @First_Color
  end
  def getSecondColor
    @Second_Color
  end

  #Checkboxes
  def setCheckboxes
  @Combo_Product_First_Checkbox = find(:xpath, '#js-bundle-builder-form > div.bundle-builder > div.product-select > div:nth-child(1) > p > label')
  end

  #Links
  def setLinks
  @Anon_Register_Link = find(:xpath, '//*[@id="singleSku-productTotal"]/div/a[1]')
  @Anon_Login_Link = find(:xpath, '//*[@id="singleSku-productTotal"]/div/a[2]')
  end

  #Select lists
  def setSelects
  @Type_or_Size_Select = find('#js-pls-select-container > span > div > div.sim-head > span.current')
  end

  #Messages
  @cart_Msg = 'item(s) added to Cart Checkout Now'

 # ----------------------

  #Actions
  def clickAddToCartButton
    Add_To_Cart_Button.click
  end

  def clickViewAllInCollection
    Entire_Collection_View_All_Button.click
  end

  def checkComboProduct
    Combo_Product_First_Checkbox.click
  end

  def clickPrint
    Print.click
  end

  def hoverZoomImage
    Zoom_Image_Container.hover
  end

  def clickAddToMyListsButton
    Add_To_Lists_Button.click
  end

  def clickEntireCollectionViewAll
    Entire_Collection_View_All_Button.click
  end

  def clickExpandSpecifications
      Expand_Specifications_Arrow.click
  end

  def clickFirstImage
    First_Image_Thumbnail.click
  end

  def clickFirstColor
    First_Color.click
  end

  def clickSecondColor
    Second_Color.click
  end

  def clickSecondImage 
    Second_Image_Thumbnail.click
  end

  def clickEntireCollectionRightArrow
    Entire_Collection_Right_Arrow.click
  end

  def clickEntireCollectionLeftArrow
    Entire_Collection_Left_Arrow.click
  end
end