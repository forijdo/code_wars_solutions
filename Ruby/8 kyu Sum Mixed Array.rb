# 

require "test/unit"

def sum_mix(x)
    x.map(&:to_i).sum
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal sum_mix([9, 3, '7', '3']),                      22
        assert_equal sum_mix(['5', '0', 9, 3, 2, 1, '9', 6, 7]),     42
        assert_equal sum_mix(['3', 6, 6, 0, '5', 8, 5, '6', 2,'0']), 41
        assert_equal sum_mix(['1', '5', '8', 8, 9, 9, 2, '3']),      45
        assert_equal sum_mix([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7]),  61
    end
   
end