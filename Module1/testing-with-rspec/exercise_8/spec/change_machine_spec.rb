require "spec_helper"
require "./lib/change_machine"

# Coin values:

# `quarter`: 25 cents
# `dime`: 10 cents
# `nickel`: 5 cents
# `penny`: 1 cent

describe ChangeMachine do 

  before :each do
    @machine = ChangeMachine.new
  end

  # **Machine is always told item cost, amount the customer paid, and then asked to dispense change**
  describe "cost" do
    it 'returns the item\'s cost at $4.95 once set as 495' do
      result = @machine.cost 495

      expect(result).to eql 4.95
    end

    it 'returns the item\'s cost at $1.75. once set as 175' do
      result = @machine.cost 175
      
      expect(result).to eql 1.75
    end

    it 'raise an error when the item\'s cost is set to $0.00' do
      
      expect{ @machine.cost 000 }.to raise_error NonValidInput
    end

    it 'raise an error when the item\'s cost is set to Adfadlkjc' do
      
      expect{ @machine.cost 'Adfadlkjc' }.to raise_error NonValidInput
    end

    it 'raise an error when the item\'s cost is set to an emtpy string' do
      
      expect{ @machine.cost '' }.to raise_error NonValidInput
    end

    it 'raise an error when the item\'s cost is set to not just positive integers (-95.25)' do
      
      expect{ @machine.cost -95.25 }.to raise_error NonValidInput
    end
  end

  describe "paid" do
    it 'returns the item\'s paid at $4.95 once set as 495' do
      result = @machine.paid 495

      expect(result).to eql 4.95
    end

    it 'returns the item\'s paid at $1.75. once set as 175' do
      result = @machine.paid 175
      
      expect(result).to eql 1.75
    end

    it 'raise an error when the item\'s paid is set to $0.00' do
      
      expect{ @machine.paid 000 }.to raise_error NonValidInput
    end

    it 'raise an error when the item\'s paid is set to Adfadlkjc' do
      
      expect{ @machine.paid 'Adfadlkjc' }.to raise_error NonValidInput
    end

    it 'raise an error when the item\'s paid is set to an emtpy string' do
      
      expect{ @machine.paid '' }.to raise_error NonValidInput
    end

    it 'raise an error when the item\'s paid is set to not just positive integers (-95.25)' do
      
      expect{ @machine.paid -95.25 }.to raise_error NonValidInput
    end
  end

  # machine.dispense_change  => owe 56 cents

  describe "dispense_change" do
    it 'outputs "Dispensed quarter" once to return to the customer, with a cost of $1.75 and $2.00 paid' do
      @machine.cost 175
      @machine.paid 200

      msg = <<~EXPENDED_COINS
      Dispensed quarter
      EXPENDED_COINS

      expect{ @machine.dispense_change }.to output(msg).to_stdout
    end

    it 'outputs the corresponding coins for $0.56 in return to customer, with a cost of $1.75 and $2.00 paid' do
      @machine.cost 144
      @machine.paid 200

      msg = <<~EXPENDED_COINS
      Dispensed quarter
      Dispensed quarter
      Dispensed nickel
      Dispensed penny
      EXPENDED_COINS

      expect{ @machine.dispense_change }.to output(msg).to_stdout
    end

    it 'outputs the dispense_change for $0.75 cents, with a cost of $1.75 and $2.00 paid' do
      @machine.cost 125
      @machine.paid 200

      msg = <<~EXPENDED_COINS
      Dispensed quarter
      Dispensed quarter
      Dispensed quarter
      EXPENDED_COINS

      expect{ @machine.dispense_change }.to output(msg).to_stdout
    end

    it 'outputs the dispense_change with $0.00 cents, with a cost of $320 and $320 paid' do
      @machine.cost 320
      @machine.paid 320

      msg = <<~EXPENDED_COINS
      EXPENDED_COINS

      # nothing owed; don't dispense change
      expect{ @machine.dispense_change }.to output(msg).to_stdout
    end

    it 'outputs the dispense_change for $0.25 cents, with a cost of $450 and $575 paid' do
      @machine.cost 450
      @machine.paid 575

      msg = <<~EXPENDED_COINS
      Dispensed quarter
      EXPENDED_COINS

      expect{ @machine.dispense_change }.to output(msg).to_stdout
    end

    it 'outputs the dispense_change for $0.00 cents, with a cost of $8.00 and $6.00 paid' do
      @machine.cost 800
      @machine.paid 600

      msg = <<~EXPENDED_COINS
      EXPENDED_COINS

      # nothing owed; don't dispense change
      expect{ @machine.dispense_change }.to output(msg).to_stdout
    end
  end
end