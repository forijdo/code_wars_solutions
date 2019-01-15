# https://www.codewars.com/kata/reviews/555fb7fa8a1409f0d000007a/groups/5c3b0db5dbd55d0001533bb0

require "test/unit"

def high_and_low(numbers)
    numbers = numbers.split(' ').map{ |s| s.to_i }
    max = numbers.max
    min = numbers.min
    "#{max} #{min}"
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
      assert_equal high_and_low("1 2  3 4  5"), "5  1"
      assert_equal high_and_low("1 2 -3 4  5"), "5 -3"
      assert_equal high_and_low("1 9  3 4 -5"), "9 -5"
    end
   
end