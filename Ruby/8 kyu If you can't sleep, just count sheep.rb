# https://www.codewars.com/kata/reviews/5b41e63f2aad9d4797001162/groups/5c3de75645356200019e09da

require "test/unit"

def count_sheep(num)
    (1..num).map{ |e| e.to_s + " sheep..." }.join
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal count_sheep(1), "1 sheep..."
        assert_equal count_sheep(2), "1 sheep...2 sheep..."
        assert_equal count_sheep(3), "1 sheep...2 sheep...3 sheep..."
    end
   
end