# https://www.codewars.com/kata/reviews/55c12f202d750b69fe00006a/groups/5c402d475c7995000157fdf0

def last_digit(n1, n2)

    return 1 if n2      == 0
    
    return 0 if n1 % 10 == 0
    return 5 if n1 % 10 == 5
    
  case n2 % 4
      when  0
        n1 % 2 == 0 ? 6 : 1
      when 1
        n1    % 10
      when 2
        n1**2 % 10
      when 3
        n1**3 % 10
    end

    # n2.zero? ? 1 : ((n1 % 10) ** (n2 % 4 + 4)) % 10
end
