# https://www.codewars.com/kata/reviews/563bafe93e572a123500001f/groups/563bafe93e572a1235000023

require "test/unit"

def sum_two_smallest_numbers(numbers)
    numbers.sort!
    numbers[0] + numbers[1]
  end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
      assert_equal sum_two_smallest_numbers([ 5,  8, 12, 18, 22]), 13
      assert_equal sum_two_smallest_numbers([ 7, 15, 12, 18, 22]), 19
      assert_equal sum_two_smallest_numbers([25, 42, 12, 18, 22]), 30
    end
   
end