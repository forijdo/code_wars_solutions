# https://www.codewars.com/kata/reviews/53368b7d07e82affdf000343/groups/5c3c22df2ce7350001c1792f

require "test/unit"

def list names

    return '' if names.length == 0
  
    x = names.map{|e| e[:name]}
    
    return x[0]          if x.length == 1
    return x.join(' & ') if x.length == 2
      
    "#{x[0, x.length-1].join(', ')} & #{x.last}"
    
  end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
      assert_equal list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]), 'Bart, Lisa, Maggie, Homer & Marge'
      assert_equal list([{name: 'Bart'},{name: 'Lisa'}]), 'Bart & Lisa'
      assert_equal list([{name: 'Bart'}]), 'Bart'
    end
   
end