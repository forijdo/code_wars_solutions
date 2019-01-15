# https://www.codewars.com/kata/reviews/550498f71522d77e6b0003bb/groups/5c3d8bc323f13c0001205be2

require "test/unit"

def comp(a, b)

    return  true if a ==  [] && b ==  []
    return false if a == nil || b == nil

    a.zip( b ).map{ |i,j| i**2 == j }.inject(:&) || a.unshift( a.pop ).zip( b ).map{ |i,j| i**2 == j }.inject(:&)
    
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple

        assert_equal comp( [],   []),  true
        assert_equal comp( [],  nil), false
        assert_equal comp(nil,   []), false

        assert_equal comp(
            [2, 2, 3], 
            [4, 9, 9]),
            false

        assert_equal comp(
            [121,   144,    19, 161,    19, 144,    19,  11], 
            [121, 14641, 20736, 361, 25921, 361, 20736, 361]),
            true

        assert_equal comp(
            [121,   144,    19, 161,    19, 144,    19,  11], 
            [231, 14641, 20736, 361, 25921, 361, 20736, 361]),
            false

        assert_equal comp(
            [121,   144,    19,   161,    19, 144,    19,  11], 
            [121, 14641, 20736, 36100, 25921, 361, 20736, 361]),
            false

        assert_equal comp(
            [121,   144,    19,   161,    19, 144,    19,  11, 1008], 
            [121, 14641, 20736, 36100, 25921, 361, 20736, 361]),
            false

        assert_equal comp(
            [ 12,   66,  29,   86,   43,   44], 
            [144, 4356, 841, 7396, 1849, 1936]),
            true

    end
   
end