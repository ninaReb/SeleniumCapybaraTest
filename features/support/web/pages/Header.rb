class HeaderPage
  include Capybara::DSL

  def FindSearch(content)
    find(:xpath, '//*[@id="react-type-ahead-normal"]/fieldset/input[1]').set(content)
  end

  def ClickFind_Button
    find(:xpath, '//*[@id="react-type-ahead-normal"]/fieldset/input[2]').click
   # click_button '//*[@id="react-type-ahead-normal"]/fieldset/input[2]'
  end
end
