# https://www.codewars.com/kata/reviews/55578dea9ff73911a700007b/groups/5c3de969478204000135c969

require "test/unit"

def DNAtoRNA(dna)
    dna.chars.map{ |i| i == 'T'? 'U' : i  }.join
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal DNAtoRNA(      "TTTT"),       "UUUU"
        assert_equal DNAtoRNA(      "GCAT"),       "GCAU"
        assert_equal DNAtoRNA("GACCGCCGCC"), "GACCGCCGCC"
    end
   
end