class PdpPageNina
  include Capybara::DSL

  #Sections
  Description = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/div[2]')
  Brand_Logo = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[1]/img')
  Price = find(:xpath, '//*[@id="singleForm"]/div[2]')
  Frequently_Purchased =  find(:xpath, '//*[@id="js-bundle-builder-form"]/div[4]~')
  Recommended_Accessories = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[3]/div')
  Entire_Collection = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[4]/div/div[1]')
  Documents = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[2]')
  Anon_User_Banner = find(:xpath, '#wrapper > main > div > div.row > div.col-lg-4.col-md-4 > div.pro-docs > ul > li:nth-child(1) > a')
  Specifications = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[2]')
  Breadcrumbs = find(:xpath, '//*[@id="wrapper"]/main/div/div[1]')
  Color_finish = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[1]/div')
  Zoom_Image_Container = find(:xpath, '/html/body/div[6]')
  Product_Images = find(:xpath, '//*[@id="js-thumb-img"]')

  #Buttons
  Entire_Collection_View_All_Button = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[4]/div/div[1]/a')
  Add_To_Cart_Button = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div[4]/input[9]')
  Print = find('#js-down-pdf')

  #Checkboxes
  Combo_Product_First_Checkbox = find(:xpath, '#js-bundle-builder-form > div.bundle-builder > div.product-select > div:nth-child(1) > p > label')

  #Links
  Anon_Register_Link = find(:xpath, '//*[@id="singleSku-productTotal"]/div/a[1]')
  Anon_Login_Link = find(:xpath, '//*[@id="singleSku-productTotal"]/div/a[2]')

  # ----------------------

  #Actions
  def clickAddToCart_Button
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
end

  

  