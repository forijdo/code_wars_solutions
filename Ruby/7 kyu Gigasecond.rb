# https://www.codewars.com/kata/reviews/53f99d9ca2640bf920000040/groups/54f0b2cb4507b2759f00053b

require "test/unit"

def gigasecond date

    # (date.to_time + 10**9).to_date

    date + 10**9 / ( 24 * 60 * 60 )
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal gigasecond(Date.new(2011, 4, 25)), Date.new(2043, 1,  1)
        assert_equal gigasecond(Date.new(1977, 6, 13)), Date.new(2009, 2, 19)
    end
   
end