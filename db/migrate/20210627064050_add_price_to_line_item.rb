class AddPriceToLineItem < ActiveRecord::Migration[6.1]
  def change
    add_column :line_items, :price, :decimal, precision: 15, scale: 4
  end
end
