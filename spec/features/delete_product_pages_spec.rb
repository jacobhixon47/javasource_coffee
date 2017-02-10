require 'rails_helper'

describe 'delete product flow' do
  it 'deletes product from the db' do
    product = Product.create(name: 'Indonesian Light Roast', price: 24.99, country: 'Indonesia')
    visit product_path(product)
    click_on 'Delete This Product'
    expect(page).to have_content 'Products'
  end
end
