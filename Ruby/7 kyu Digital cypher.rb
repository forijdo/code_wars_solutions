# https://www.codewars.com/kata/reviews/593000f432a097c273000146/groups/5c3c80debc6def00012b32a6

require "test/unit"

def encode(message, key)
    alphabet = {}
    ('a'..'z').map{ |c| alphabet[c] = c.ord - 96 }
    keys = key.to_s.chars
    code = (0...message.length).map{|i| alphabet[ message[i] ] + (keys[ i % keys.length]).to_i }
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal encode(      "scout", 1939), [                       20, 12, 18, 30, 21]
        assert_equal encode("masterpiece", 1939), [14, 10, 22, 29, 6, 27, 19, 18,  6, 12,  8]
    end
   
end