class BackfillPriceToLineItems < ActiveRecord::Migration[6.1]
  # https://jakeyesbeck.com/2021/04/10/avoid-models-in-migrations/
  #
  # Temporary "in-line" LineItem model at the time of adding the migration. Defining the model
  # in the migration prevents issues in case the LineItem model gets renamed in the future.
  class LineItem < ApplicationRecord
    belongs_to :product
    belongs_to :cart
  end

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
