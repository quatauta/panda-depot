require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  def new_product(image_url)
    Product.new(title: "My Book Title", description: "yyy", price: 1, image_url: image_url)
  end

  test "product attributes must not be empty?" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
    product = Product.new(title: "A Panda's book",
                          description: "Finest message sent by a Panda",
                          image_url: "zzz.jpg")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  test "image URL" do
    ok = %w[fred.gif freg.jpg fred.png fred.svg FRED.JPG FRED.Jpg http://a.b.c/x/y/z/freg.gif]
    bad = %w[fred.doc fred.gif/more fred.gif.more]

    ok.each do |image_url|
      assert new_product(image_url).valid?, "#{image_url} should be valid"
    end

    bad.each do |image_url|
      assert new_product(image_url).invalid?, "#{image_url} should be invalid"
    end
  end

  test "product is invalid with a non-unique title" do
    product = Product.new(title: products(:ruby).title,
                          description: "yyy",
                          price: 1,
                          image_url: "fred.gif")

    assert product.invalid?
    assert_equal [I18n.translate("errors.messages.taken")], product.errors[:title]
  end

  test "product title must have at least 10 characters" do
    product = Product.new(description: "yyy",
                          price: 1,
                          image_url: "fred.gif")

    product.title = "1"
    assert product.invalid?
    assert_equal ["is too short (minimum is 10 characters)"], product.errors[:title]

    product.title = "123456789"
    assert product.invalid?
    assert_equal ["is too short (minimum is 10 characters)"], product.errors[:title]

    product.title = "1234567890"
    assert product.valid?
  end
end
