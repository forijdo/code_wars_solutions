# https://www.codewars.com/kata/reviews/57f132187ef3a14e9f000035/groups/5af7d5cd5147ec41de00006f

require "test/unit"

def find_short(s)

    #s.split.map(&:size).min

    shortest =  Float::INFINITY
    s.split.map{ |w| shortest = w.size if w.size < shortest }
    shortest
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal find_short("bitcoin take over the world maybe who knows perhaps"),                3
        assert_equal find_short("turns out random test cases are easier than writing out basic ones"), 3
        assert_equal find_short("lets talk about javascript the best language"),                       3
        assert_equal find_short("i want to travel the world writing code one day"),                    1
        assert_equal find_short("Lets all go on holiday somewhere very cold"),                         2
    end
   
end