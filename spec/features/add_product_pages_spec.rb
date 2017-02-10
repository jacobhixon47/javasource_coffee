require 'rails_helper'

describe 'new product flow' do
  it 'adds a new product to the db' do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Name', with: 'Indonesian Light Roast'
    fill_in 'Price', with: '24.99'
    fill_in 'Country', with: 'Indonesia'
    click_on 'Create Product'
    expect(page).to have_content 'Indonesian'
  end

  it 'gives error when field left blank' do
    visit new_product_path
    click_on "Create Product"
    expect(page).to have_content 'errors'
  end
end
