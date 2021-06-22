class Product < ApplicationRecord
  has_many :line_items

  before_destroy :error_if_referenced_by_line_item

  validates :image_url, allow_blank: true, format: {
    with: %r{\A.*\.(gif|jpg|png|svg)\z}i,
    message: "must be a URL for a GIF, JPG, PNG, or SVG image."
  }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true
  validates :title, length: {minimum: 10}

  private

  # Raise an error if this product is referenced by a line item
  def error_if_referenced_by_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
