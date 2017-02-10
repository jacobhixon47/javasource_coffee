class WelcomeController < ApplicationController
  def index
    products = Product.all
    @featured = products.shuffle.first
  end
end
