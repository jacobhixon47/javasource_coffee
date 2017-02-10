require 'rails_helper'

describe 'update product flow' do
  it 'updates product info in the db' do
    product = Product.create(name: 'Indonesian Light Roast', price: 24.99, country: 'Indonesia')
    visit edit_product_path(product)
    fill_in 'Price', with: '32.99'
    click_on 'Update Product'
    expect(page).to have_content '32.99'
  end

  it 'gives error when field left blank' do
    product = Product.create(name: 'Indonesian Light Roast', price: 24.99, country: 'Indonesia')
    visit edit_product_path(product)
    fill_in 'Name', with: ''
    click_on "Update Product"
    expect(page).to have_content 'error'
  end
end
