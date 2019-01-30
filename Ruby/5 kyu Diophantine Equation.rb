# https://www.codewars.com/kata/reviews/554f770054b1e21bee0000a3/groups/5c514591fbce9c0001d6c457

# https://stackoverflow.com/a/3398195

require 'prime'

def sol_equa(n)  

    primes, powers = n.prime_division.transpose
    exponents = powers.map{|i| (0..i).to_a}
    divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
    end
    
    divisors.sort.map{|div| [div, n / div]}
    .reject{ |a,b|
      
      a * b != n     ||
      (a+b) % 2 != 0 ||
      (b-a) % 4 != 0
          
    }
    .map{ |a,b|
      
        [ (a+b)/2, (b-a)/4 ]
        
    }
    .reject{ |x,y|
    
      x < 0 ||
      y < 0 ||
      x**2 - 4 * y**2 != n
      
    }
    
end