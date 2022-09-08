require 'rails_helper'

RSpec.describe 'Landing Page', vcr: 'merchants' do
  it 'has link to merchants index' do
    visit root_path
    click_link 'Merchants'
    expect(current_path).to eq(merchants_path)
  end
end