require "spec_helper"
require "./lib/product"

describe Product do 

  before :each do
    @product = Product.new  "new_product", 15
  end

  # **Machine is always told item cost, amount the customer paid, and then asked to dispense change**
  describe '#initialize' do
    it 'returns the proper title, cost and empty reviews array from instace' do
      result_array = []
      result_array << @product.title
      result_array << @product.cost
      result_array << @product.reviews

      expect(result_array).to eql ['new_product', 15, []]
    end

    it 'returns :reliability set to nil' do
      result = @product.reliability

      expect(result).to eq nil
    end
  end

  describe '#read_product_info' do
    it 'returns the phrase "new_product currently costs 15"' do
      result = @product.read_product_info

      expect(result).to eql "new_product currently costs 15"
    end

    it 'returns a phrase matching the pattern ^(\w)+\s(currently)\s(costs)\s(\d+\.?\d*)$' do
      regex = /^(\w)+\s(currently)\s(costs)\s(\d+\.?\d*)$/

      result = @product.read_product_info

      expect(result).to match regex
    end

    it 'creates a new object where there is no pattern match' do
      regex = /^(\w)+\s(currently)\s(costs)\s(\d+\.?\d*)$/
      @product_wrong = Product.new  "new_product", 'wrong_quantity' 

      result = @product_wrong.read_product_info

      expect(result).not_to match regex
    end
  end

  describe '#add_review' do
    it 'adds a review to the reviews array' do
      @product.add_review "This is a new review"

      result = @product.reviews

      expect(result).to eql ["This is a new review"]
    end

    it 'adds and save two reviews to the reviews array' do
      @product.add_review "This is a new review"
      @product.add_review "This is another review"

      result = @product.reviews

      expect(result).to eql ["This is a new review", "This is another review"]
    end

    it 'sets the reviews attribute to a whole new reviews array' do
      whole_new_reviews = ["This is a new review", "This is another review"]

      @product.reviews = whole_new_reviews

      result = @product.reviews

      expect(result).to eq whole_new_reviews
    end
  end

  describe '#read_reviews' do
    it 'returns "weak" when two reviews are saved' do
      @product.add_review "This is a new review"
      @product.add_review "This is another review"

      result = @product.read_reviews

      expect(result).to eql "weak"
    end

    it 'returns "weak" when reviews attribute is set with a 2 items array' do
      whole_new_reviews = ["This is a new review", "This is another review"]

      @product.reviews = whole_new_reviews

      result = @product.read_reviews

      expect(result).to eql "weak"
    end

    it 'should not return "okay" neither "strong" when two reviews are saved' do
      @product.add_review "This is a new review"
      @product.add_review "This is another review"

      result = @product.read_reviews

      expect(result).not_to eql "okay"
      expect(result).not_to eql "strong"
    end

    it 'returns "okay" when six reviews are saved' do

      6.times do |i|
        @product.add_review "This is the review ##{i}"  
      end

      result = @product.read_reviews

      expect(result).to eql "okay"
    end

    it 'returns "okay" when reviews attribute is set with a 6 items array' do
      whole_new_reviews = []

      6.times do |i|
        whole_new_reviews << "This is the review ##{i}"  
      end

      @product.reviews = whole_new_reviews

      result = @product.read_reviews

      expect(result).to eql "okay"
    end

    it 'should not return "strong" neither "weak when six reviews are saved' do

      6.times do |i|
        @product.add_review "This is the review ##{i}"  
      end

      result = @product.read_reviews

      expect(result).not_to eql "strong"
      expect(result).not_to eql "weak"
    end

    it 'returns "strong" when eleven reviews are saved' do
      11.times do |i|
        @product.add_review "This is the review ##{i}"  
      end

      result = @product.read_reviews

      expect(result).to eql "strong"
    end

    it 'returns "strong" when reviews attribute is set with an 11 items array' do
      whole_new_reviews = []

      11.times do |i|
        whole_new_reviews << "This is the review ##{i}"  
      end

      @product.reviews = whole_new_reviews

      result = @product.read_reviews

      expect(result).to eql "strong"
    end

    it 'should not return "okay" neither "weak when eleven reviews are saved' do
      11.times do |i|
        @product.add_review "This is the review ##{i}"  
      end

      result = @product.read_reviews

      expect(result).not_to eql "okay"
      expect(result).not_to eql "weak"
    end
  end
end