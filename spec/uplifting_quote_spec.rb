require "spec_helper"

RSpec.describe UpliftingQuote do
  it "has a version number" do
    expect(UpliftingQuote::VERSION).not_to be nil
  end

  describe ".add" do
    it "should add two numbers" do
      expect(UpliftingQuote.add(0, 0)).to eq(0)
      expect(UpliftingQuote.add(1, 3)).to eq(4)
      expect(UpliftingQuote.add(1.1, 3.8)).to eq(4.9)
    end

    it "should error if not a fixnum" do
      expect{UpliftingQuote.add(1, "a")}.
        to raise_error("1 and/or a is not a number, try again...")
    end
  end

  describe ".reverse" do
    it "should reverse a string" do
      expect(UpliftingQuote.reverse("")).to eq("")
      expect(UpliftingQuote.reverse("london")).to eq("nodnol")
    end

    it "should error if not a string" do
      expect{UpliftingQuote.reverse(15)}.
        to raise_error("15 is not a string, try again...")
    end
  end

  describe ".get_quote" do
    it "should return an uplifting quote" do
      expect(UpliftingQuote.get_quote).not_to be nil
    end
  end
end
