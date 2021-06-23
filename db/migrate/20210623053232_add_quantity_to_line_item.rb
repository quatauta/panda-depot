class AddQuantityToLineItem < ActiveRecord::Migration[6.1]
  def change
    add_column :line_items, :quantity, :integer, default: 1
  end
end
