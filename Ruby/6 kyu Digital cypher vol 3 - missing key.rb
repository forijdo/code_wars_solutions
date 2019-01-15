# https://www.codewars.com/kata/reviews/5933d815062f92c6150009c1/groups/5c3c8c4ebc6def00012b3333

require "test/unit"

def find_the_key(message, code)
    key = message.codepoints.zip(code).map{ |m,c| c - m.ord + 96 }

    for p in (0..key.length) 
        for l in (1..key.length-1)
            return key[p,l].join.to_i if key.zip( key[p,l].map(&:to_i).cycle ).map{ |i,j| i == j }.inject(:&)
        end
    end
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal find_the_key(      "scout", [                        20, 12, 18, 30, 21]), 1939
        assert_equal find_the_key("masterpiece", [ 14, 10, 22, 29, 6, 27, 19, 18,  6, 12,  8]), 1939
        assert_equal find_the_key("nomoretears", [ 15, 17, 14, 17, 19, 7, 21,  7,  2, 20, 20]), 12
    end
   
end