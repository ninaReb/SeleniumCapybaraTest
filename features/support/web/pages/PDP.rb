class PdpPage
  include Capybara::DSL

  def ClickAddToCart_Button
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div[4]/input[9]').click
  end
end
