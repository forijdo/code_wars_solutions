# https://www.codewars.com/kata/reviews/5c489ac46ce38000017f2f7e/groups/5c4a9bed8287970001ae0c58

def multiplicationTable(n)
    (1..n).map{ |i| (1..n).map{ |j| j * i } }
end
