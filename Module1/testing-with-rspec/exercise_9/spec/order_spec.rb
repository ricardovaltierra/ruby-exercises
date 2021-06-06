require "spec_helper"
require "./lib/order"

describe Order do
  before :each do
    @order = Order.new
  end

  describe '#initialize' do
    it 'sets "total_products" as zero and "status" as "incomplete"' do
      result_total_products = @order.total_products
      result_status = @order.status

      expect(result_total_products).to eql 0
      expect(result_status).to eq result_status
    end
  end

  describe '#add_to_cart' do
    it 'increase attribute "total_products" by one' do
      @order.add_to_cart

      result = @order.total_products

      expect(result).to eql 1
    end

    it 'increase attribute "total_products" by six, being called six times' do
      6.times { @order.add_to_cart }

      result = @order.total_products

      expect(result).to eql 6
    end
  end

  describe '#update_discount' do
    it 'returns a discount of zero setting "total_products" to five' do
      5.times { @order.add_to_cart }

      result = @order.update_discount

      expect(result).to eql 0
    end

    it 'returns a discount of 0.20 setting "total_products" to 10' do
      10.times { @order.add_to_cart }

      result = @order.update_discount

      expect(result).to eql 0.20
    end
  end

  describe '#check_out' do
    it 'sets "status" attribute with a "complete" value' do
      @order.check_out

      result = @order.status

      expect(result).to eq "complete"
    end

    it 'changes the "status" attribute different than "incomplete"' do
      @order.check_out

      result = @order.status

      expect(result).not_to eq "incomplete"
    end
  end
end 