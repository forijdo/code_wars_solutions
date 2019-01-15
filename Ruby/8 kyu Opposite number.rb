# https://www.codewars.com/kata/reviews/56deebde6a5c28baa900002c/groups/56deebde6a5c28baa900002e

require "test/unit"

def opposite(number)
    -number
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal opposite(1), -1
        assert_equal opposite(2), -2
    end
   
end