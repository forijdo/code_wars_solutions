# https://www.codewars.com/kata/reviews/516f30247c907a79f20003a1/groups/5c3c29cc521c2500014dabec

require "test/unit"

def solution(number)
    i   = 3
    sum = 0
    for i in 3..number - 1

      if i.to_s.chars.last == '0' || i.to_s.chars.last == '5'
        sum += i
        next
      end

      sub_sum = 0
      for c in i.to_s.chars
        sub_sum += c.to_i
      end

      if sub_sum % 3 == 0
        sum += i
      end      

    end

    sum
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
      assert_equal solution( 10),   23
      assert_equal solution( 20),   78
      assert_equal solution(200), 9168
    end
   
end