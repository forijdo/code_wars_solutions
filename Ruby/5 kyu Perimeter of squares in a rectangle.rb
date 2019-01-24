# https://www.codewars.com/kata/reviews/559a2970fdf9d7922d000069/groups/5c4947d65186660001b2b3fc

def perimeter(n)
    f = [0, 1]
    for i in (1..n)
      f << f[-2] + f[-1]
    end
    f.sum * 4
end
