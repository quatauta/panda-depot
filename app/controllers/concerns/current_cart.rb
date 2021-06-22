# A controller concern to get the current cart from the session at key +cart_id+.
#
# If the session does not know about the current cart (+session[:cart_id]+ is nil, or does
# not refer to an existing +Cart+), a new +Cart+ is created and assigned to the session (+
# session[:cart_id]+ is set to the ID of the newly created +Cart+).
module CurrentCart
  private

  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
