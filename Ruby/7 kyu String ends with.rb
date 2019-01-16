# https://www.codewars.com/kata/reviews/54e143767775b7735d00015a/groups/5c3dec67478204000135c982

require "test/unit"

def solution(s, e)
    s[ s.size - e.size, e.size ] == e # s.end_with?(e)
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal solution(   'abc', 'bc'),  true 
        assert_equal solution(   'abc',  'd'), false 
        assert_equal solution('abcabc', 'bc'),  true
    end
   
end