require "./fizzbuzz/*"

module Fizzbuzz
  class Executor
    def initialize(@limit)
    end

    def fizzbuzz
      ary = Array(String).new
      @limit.times {|i|
        i+=1
        ary << case
        when i%15==0 then "FizzBuzz"
        when i%5==0 then "Buzz"
        when i%3==0 then "Fizz"
        else i.to_s
        end
      }
      ary
    end
  end
end

