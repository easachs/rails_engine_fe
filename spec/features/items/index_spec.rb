require 'rails_helper'

RSpec.describe 'Items Index' do
  it 'lists items names as links to show', vcr: 'items4' do
    visit items_path
    within '#item-4' do
      expect(page).to have_link('Item Nemo Facere')
      expect(page).to have_content('Description: Sunt eum id eius magni consequuntur delectus veritatis.')
      expect(page).to have_content('Price: 42.91')

      click_link 'Item Nemo Facere'
      expect(current_path).to eq(item_path(4))
    end
  end

  it 'lists items names as links to show', vcr: 'items99' do
    visit items_path
    within '#item-99' do
      expect(page).to have_link('Item Inventore Omnis')
      expect(page).to have_content('Description: Consectetur ut deleniti.')
      expect(page).to have_content('Price: 390.58')

      click_link 'Item Inventore Omnis'
      expect(current_path).to eq(item_path(99))
    end
  end
end