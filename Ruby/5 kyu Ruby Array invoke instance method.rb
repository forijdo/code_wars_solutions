# https://www.codewars.com/kata/reviews/516f301f7c907a79f20000d5/groups/5c3f34d73cf273000184a869

require "test/unit"

class Array

    def invoke(mname, *args, &block)

        #select(&block).map {|item| item.send(method, *args) }

        self
            .select{ |e| true if block == nil || block.call(e) }
            .map   { |e| e.send mname, args[0] }

    end

end

# contrived class example used to provide a method that we could call
class ExampleItem
    # notice that this method always returns "updated"
    def update(arg)
      @arg = arg
      "updated"
    end
  end

class TestSolution < Test::Unit::TestCase
 
    def test_simple
        assert_equal [ ExampleItem.new, ExampleItem.new ].invoke(:update, 'a'), ['updated', 'updated']
    end
   
end