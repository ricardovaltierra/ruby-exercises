require "spec_helper"
require "./lib/product"

describe Product do 

  # before :each do
  #   @product = Product.new
  # end

  # **Machine is always told item cost, amount the customer paid, and then asked to dispense change**
  describe "cost" do
    it 'returns :title and :cost variables when a new product is initialized with "new_product" and 15 respective values' do
      product = Product.new "new_product", 15

      title_cost = []
      title_cost << product.title
      title_cost << product.cost

      expect(title_cost).to eql ["new_product", 15]
    end

    it 'raises an error when a new product is initialized with "new_product", 15, and 15 values' do
      expect{ Product.new "new_product", 15, 15 }.to raise_error ArgumentError
    end

    it 'returns new_product currently costs 15 when a new product is initialized with "new_product" and 15 respective values' do
      product = Product.new "new_product", 15

      result = product.read_product_info

      expect(result).to eql "new_product currently costs 15"
    end

    it 'adds a review to the reviews array' do
      product = Product.new "new_product", 15

      product.add_review "This is a new review"

      result = product.reviews

      expect(result).to eql ["This is a new review"]
    end

    it 'adds and save two reviews to the reviews array' do
      product = Product.new "new_product", 15

      product.add_review "This is a new review"
      product.add_review "This is another review"

      result = product.reviews

      expect(result).to eql ["This is a new review", "This is another review"]
    end

    it 'saves two reviews, and "read_reviews" returns "weak"' do
      product = Product.new "new_product", 15

      product.add_review "This is a new review"
      product.add_review "This is another review"

      result = product.read_reviews

      expect(result).to eql "weak"
    end

    it 'saves six reviews, and "read_reviews" returns "okay"' do
      product = Product.new "new_product", 15

      6.times do |i|
        product.add_review "This is the review ##{i}"  
      end

      result = product.read_reviews

      expect(result).to eql "okay"
    end

    it 'saves 11 reviews, and "read_reviews" returns "strong"' do
      product = Product.new "new_product", 15

      11.times do |i|
        product.add_review "This is the review ##{i}"  
      end

      result = product.read_reviews

      expect(result).to eql "strong"
    end

    it 'saves 11 reviews, and "reliability" returns "strong"' do
      product = Product.new "new_product", 15

      11.times do |i|
        product.add_review "This is the review ##{i}"  
      end

      product.read_reviews
      result = product.reliability

      expect(result).to eql "strong"
    end

    it 'creates 11 reviews on a new array, and saves it on the "reviews" variable' do
      product = Product.new "new_product", 15

      reviews_to_save = []

      11.times do |i|
        reviews_to_save << "This is the review ##{i}"  
      end

      product.reviews = reviews_to_save
      result = product.reviews

      expect(result).to eql reviews_to_save
    end
  end
end