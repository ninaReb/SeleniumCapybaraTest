class MyListPage
  include Capybara::DSL

  def Click_CreateNewList
    find(:xpath, '//*[@id="wrapper"]/main/div/div[3]/div[2]/div[2]/div/a[1]').click
  end

  def Fill_ListName(content)
    fill_in 'giftListName', with: 'test ' + content
  end

  def Click_Save
    find(:xpath, '//*[@id="js-creatNewGiftList-form"]/div[4]/div[2]/div/a[2]').click
  end

  def Click_MoreActions # clica na opção de More Actions na página geral de listas
    find(:xpath, '//*[@id="js-mylist-sort-group"]/li[1]/div/i').click
  end

  def Click_MoreActionsDelete # clica na opção de Delete de More Actions na página geral de listas
    find(:xpath, '//*[@id="js-mylist-sort-group"]/li[1]/div/div/ul/li[2]/a/span').click
  end

  def Click_YesBtnDeleteList # clica no botão Yes na modal de confirmação para deletar lista
    find(:xpath, '//*[@id="myListDeleteListModal"]/div/div/div[2]/div[2]/div/a[2]').click
  end
end
