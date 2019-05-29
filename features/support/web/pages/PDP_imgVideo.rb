class PdpPage
  include Capybara::DSL

  def ImageHover
    image = find(:xpath, '/html/body/div[6]')
    image.hover
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

end
