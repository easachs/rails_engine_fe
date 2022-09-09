require 'rails_helper'

RSpec.describe 'Item Show' do
  it 'has item attributes', vcr: 'item1' do
    visit item_path(4)
    expect(page).to have_content('Item Nemo Facere')
    expect(page).to have_content('Description: Sunt eum id eius magni consequuntur delectus veritatis.')
    expect(page).to have_content('Price: 42.91')
  end
end