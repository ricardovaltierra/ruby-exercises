require "spec_helper"
require "./lib/jaden_case"

describe JadenCased do 
  # Addition operation
  describe ".tweet" do

    it "Uncapitalized Jaden Smith phrase gets in, and an all-words capitalized phrase is received" do
      result = JadenCased.tweet "How can mirrors be real if our eyes aren't real"

      expect(result).to eql "How Can Mirrors Be Real If Our Eyes Aren't Real"
    end

    it "Jaden Smith phrase gets in (some words capitalzed), and an all-words capitalized phrase is received" do
      result = JadenCased.tweet "willow Is the Greatest To ever do It"

      expect(result).to eql "Willow Is The Greatest To Ever Do It"
    end

    it "An all words capitalized Jaden Smith phrase gets in and same is received" do
      result = JadenCased.tweet "Beware Of Willow"

      expect(result).to eql "Beware Of Willow"
    end
    # Some possible test cases may still be missed
  end
end