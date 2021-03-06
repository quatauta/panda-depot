class CombineItemsInCart < ActiveRecord::Migration[6.1]
  # https://jakeyesbeck.com/2021/04/10/avoid-models-in-migrations/
  #
  # Temporary "in-line" Cart model at the time of adding the migration. Defining the model
  # in the migration prevents issues in case the Cart model gets renamed in the future.
  class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
  end

  # https://jakeyesbeck.com/2021/04/10/avoid-models-in-migrations/
  #
  # Temporary "in-line" LineItem model at the time of adding the migration. Defining the model
  # in the migration prevents issues in case the LineItem model gets renamed in the future.
  class LineItem < ApplicationRecord
    belongs_to :product
    belongs_to :cart
  end

  # Replace multiple line items for a single product in a cart with a single item and
  # according quantity
  def up
    Cart.all.each do |cart|
      combine_line_items(cart)
    end
  end

  # Replace line items with quantity > 1 by multiple line items with quantity 1
  def down
    LineItem.where("quantity > 1").each do |line_item|
      line_item.quantity.times do
        LineItem.create(cart_id: line_item.cart_id, product_id: line_item.product_id, quantity: 1)
      end

      line_item.destroy
    end
  end

  private

  def combine_line_items(cart)
    cart.line_items.group(:product_id).sum(:quantity).lazy
      .select { |product_id, quantity| quantity > 1 }
      .each do |product_id, quantity|
        combine_product_line_items(cart, product_id, quantity)
      end
  end

  def combine_product_line_items(cart, product_id, quantity)
    line_items = cart.line_items
    line_items.where(product_id: product_id).delete_all
    item = line_items.build(product_id: product_id)
    item.quantity = quantity
    item.save!
  end
end
