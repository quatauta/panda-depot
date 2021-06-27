class BackfillPriceToLineItems < ActiveRecord::Migration[6.1]
  def up
    LineItem.where("price is null").each do |line_item|
      line_item.price = line_item.product.price
      line_item.save!
    end
  end

  def down
    LineItem.where("price is not null").each do |line_item|
      line_item.price = nil
      line_item.save!
    end
  end
end
