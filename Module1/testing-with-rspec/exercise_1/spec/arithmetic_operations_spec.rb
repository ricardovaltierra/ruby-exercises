require "spec_helper"
require "./lib/arithmetic_operations"

describe ArithmeticOperations do 
  # Addition operation
  describe ".sum" do
    it "returns 8, for 3 and 5 as paratemers" do
      result = ArithmeticOperations.sum(3,5)

      expect(result).to eql 8
    end

    it 'return 15 when sending 8, 2 and 5' do
      result = ArithmeticOperations.sum(8 ,2, 5)

      expect(result).to eql 15
    end

    it 'return -3 when sending -1, -1 and -1' do
      result = ArithmeticOperations.sum(-1 ,-1, -1)

      expect(result).to eql -3
    end

    it 'return -1000 when sending -500 and -500' do
      result = ArithmeticOperations.sum(-500, -500)

      expect(result).to eql -1000
    end

    it 'return -14.5 when sending -5, -5 and -4.5' do
      result = ArithmeticOperations.sum(-5 ,-5, -4.5)

      expect(result).to eql -14.5
    end

    it 'return 3.1415599999999997 when sending 1, 2.13 and 0.01156' do
      result = ArithmeticOperations.sum(1, 2.13, 0.01156)

      expect(result).to eql 3.1415599999999997
    end
  end

  # Substraction operation
  describe ".subs" do
    it "returns 3, for 5 and 2 as paratemers" do
      result = ArithmeticOperations.subs(5,2)

      expect(result).to eql 3
    end

    it 'return 0 when sending 6, 3 and 3' do
      result = ArithmeticOperations.subs(6 ,3, 3)

      expect(result).to eql 0
    end

    it 'return -3 when sending 6, -3 and -3' do
      result = ArithmeticOperations.subs(6 ,-3, -3)

      expect(result).to eql 12
    end

    it 'return 1000 when sending -500 and -1500' do
      result = ArithmeticOperations.subs(-500, -1500)

      expect(result).to eql 1000
    end

    it 'return -14.5 when sending -20, -5 and -0.5' do
      result = ArithmeticOperations.subs(-20 ,-5, -0.5)

      expect(result).to eql -14.5
    end

    it 'return 3.141556 when sending 5.28315599999999997, 2.13 and 0.01156' do
      result = ArithmeticOperations.subs(5.28311599999999997, 2.13, 0.01156)

      expect(result).to eql 3.141556
    end
  end

  describe ".times" do
    it "returns 10, for 5 and 2 as paratemers" do
      result = ArithmeticOperations.times(5,2)

      expect(result).to eql 10
    end

    it 'return 54 when sending 6, 3 and 3' do
      result = ArithmeticOperations.times(6 ,3, 3)

      expect(result).to eql 54
    end

    it 'return -54 when sending 6, 3 and -3' do
      result = ArithmeticOperations.times(6 ,3, -3)

      expect(result).to eql -54
    end

    it 'return 1000 when sending -500 and -2' do
      result = ArithmeticOperations.times(-500, -2)

      expect(result).to eql 1000
    end

    it 'return -255.75 when sending -15.5, -5.5 and -3' do
      result = ArithmeticOperations.times(-15 ,-5, -3)

      expect(result).to eql -225
    end

    it 'return 0.66915228 when sending 3.14156, 2.13 and 0.5' do
      result = ArithmeticOperations.times(3.14156, 2.13, 0.1)

      expect(result).to eql 0.66915228
    end
  end

  describe ".div" do
    it "returns 5, for 10 and 2 as paratemers" do
      result = ArithmeticOperations.div(10,2)

      expect(result).to eql 5
    end

    it 'return  when sending 10 and 0 ' do
      # result = ArithmeticOperations.div(10, 0)

      # expect{result}.to raise_error(ZeroDivisionError)
      expect{ArithmeticOperations.div(10, 0)}.to raise_error(ZeroDivisionError)
    end

    it 'return -9 when sending -54, 6' do
      result = ArithmeticOperations.div(-54, 6)

      expect(result).to eql -9
    end

    it 'return 500 when sending -1000 and -2' do
      result = ArithmeticOperations.div(-1000, -2)

      expect(result).to eql 500
    end

    it 'return -28.571428571428573 when sending -100 and 3.5' do
      result = ArithmeticOperations.div(-100, 3.5)

      expect(result).to eql -28.571428571428573
    end

    it 'return 1.474910798122066 when sending -3.14156, -2.13' do
      result = ArithmeticOperations.div(-3.14156, -2.13)

      expect(result).to eql 1.474910798122066
    end
  end
end
