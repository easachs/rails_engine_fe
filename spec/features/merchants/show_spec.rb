require 'rails_helper'

RSpec.describe 'Merchant Show' do
  it 'lists items names', vcr: 'merchant1' do
    visit merchant_path(1)
    expect(page).to have_content('Schroeder-Jerde')
    within '#item-4' do
      expect(page).to have_content('Name: Item Nemo Facere')
      expect(page).to have_content('Description: Sunt eum id eius magni consequuntur delectus veritatis.')
      expect(page).to have_content('Price: 42.91')
    end

    within '#item-2500' do
      expect(page).to have_content('Name: Item Ea Voluptatum')
      expect(page).to have_content('Description: Sunt officia eum qui molestiae.')
      expect(page).to have_content('Price: 323.01')
      click_link 'Item Ea Voluptatum'
      expect(current_path).to eq(item_path(2500))
    end
  end
end