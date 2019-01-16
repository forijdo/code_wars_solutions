# https://www.codewars.com/kata/reviews/516f30217c907a79f200017d/groups/516f30217c907a79f2000198

require "test/unit"

class Person

    attr_reader :age
  
    def initialize(firstName, lastName, age)
      @firstName = firstName
      @lastName  = lastName
      @age       = age
    end
    
    def full_name
      "#{@firstName} #{@lastName}"
    end
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        matz = Person.new('Yukihiro', 'Matsumoto', 47)

        assert_equal matz.full_name, 'Yukihiro Matsumoto'
        assert_equal matz.age, 47
        
        joe = Person.new('Joe', 'Smith', 30)
        
        assert_equal joe.full_name, 'Joe Smith'
        assert_equal joe.age, 30
    end
   
end