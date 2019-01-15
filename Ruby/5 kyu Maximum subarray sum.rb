# https://www.codewars.com/kata/reviews/59d12455b8d0ec0037000197/groups/5c3c7c9cbc6def00012b31d2

require "test/unit"

def max_sequence(arr)
    sum = 0
    for p in (0...arr.length)
        for l  in (1..arr.length-p)
            s = arr[p, l].sum
            sum = s if s > sum
        end
    end
    sum
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal max_sequence([   ]),  0
        assert_equal max_sequence([ 11]), 11
        assert_equal max_sequence([-32]),  0
        assert_equal max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]),  6
        assert_equal max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]), 12
    end
   
end