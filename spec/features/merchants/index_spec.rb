require 'rails_helper'

RSpec.describe 'Merchant Index' do
  it 'lists merchants names as links to show', vcr: 'merchants' do
    visit merchants_path
    within '#merchant-1' do
      expect(page).to have_link('Schroeder-Jerde')
      click_link 'Schroeder-Jerde'
      expect(current_path).to eq(merchant_path(1))
    end

    visit merchants_path
    within '#merchant-42' do
      expect(page).to have_link('Glover Inc')
      click_link 'Glover Inc'
      expect(current_path).to eq(merchant_path(42))
    end
  end
end