# https://www.codewars.com/kata/reviews/593001c041b4dd03ea0000c8/groups/5c3c82e1bc6def00012b32b1

require "test/unit"

def decode(code, key)
    code.zip(key.to_s.chars.map(&:to_i).cycle).map{ |c,k| c - k + 96 }.map{|c| c.chr }.join
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal decode([20, 12, 18, 30, 21                      ], 1939), "scout"
        assert_equal decode([14, 10, 22, 29,  6, 27, 19, 18, 6, 12, 8], 1939), "masterpiece"
    end
   
end