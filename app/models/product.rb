class Product < ApplicationRecord
  validates :image_url, allow_blank: true, format: {
    with: %r{\A.*\.(gif|jpg|png|svg)\z}i,
    message: "must be a URL for a GIF, JPG, PNG, or SVG image."
  }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
end
