require_relative '../lib/multiples.rb'

describe "the is_multiple_of_3_or_5? method" do
    it "should return TRUE when an integer is a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(3)).to eq(true)
        expect(is_multiple_of_3_or_5?(5)).to eq(true)
        expect(is_multiple_of_3_or_5?(51)).to eq(true)
        expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end

    it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(2)).to eq(false)
        expect(is_multiple_of_3_or_5?(7)).to eq(false)
        expect(is_multiple_of_3_or_5?(64)).to eq(false)
    end
end

  describe "the sum_of_multiple_of_3_or_5? method" do
    it "should return the right sum" do
        expect(sum_of_3_or_5_multiples(10)).to eq(23)
        expect(sum_of_3_or_5_multiples(11)).to eq(33)
        expect(sum_of_3_or_5_multiples(0)).to eq(0)
    end

    it "should return false" do
        expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
        expect(sum_of_3_or_5_multiples(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
        expect(sum_of_3_or_5_multiples(string)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    end
end

