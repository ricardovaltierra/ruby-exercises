require "spec_helper"
require "./lib/no_max_no_min"

describe NoMaxNoMin do 
  # Addition operation
  describe ".sum" do
    it "returns 16, for an array containing 6, 2, 1, 8, and 10 values" do
      result = NoMaxNoMin.sum [ 6, 2, 1, 8, 10 ]

      expect(result).to eql 16
    end

    it 'return 6, for an array containing 1, 1, 11, 2, and 3 values' do
      result = NoMaxNoMin.sum [ 1, 1, 11, 2, 3 ]

      expect(result).to eql 6
    end

    it 'return 4, for an array containing 0, 3, 1, 100, and 0 values' do
      result = NoMaxNoMin.sum [ 0, 3, 1, 100, 0 ]

      expect(result).to eql 4
    end

    it 'return 0, for an array containing all zeroes' do
      result = NoMaxNoMin.sum [ 0, 0, 0, 0, 0 ]

      expect(result).to eql 0
    end

    it 'return 3, for a 5 length array containing all ones' do
      result = NoMaxNoMin.sum [ 1, 1, 1, 1, 1 ]

      expect(result).to eql 3
    end
  end
end
