class StoreController < ApplicationController
  def index
    session[:counter] = (session[:counter] ||= 0) + 1
    @counter = session[:counter]
    @products = Product.order(:title)
  end
end
