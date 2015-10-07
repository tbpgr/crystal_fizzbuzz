require "./spec_helper"

describe Fizzbuzz do
  describe Fizzbuzz::Executor do
    describe "fizzbuzz" do
      it "works" do
        actual = Fizzbuzz::Executor.new(15).fizzbuzz
        actual.should eq(["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"])
      end
    end
  end
end

