# https://www.codewars.com/kata/reviews/5b66481967c8e87961000a35/groups/5c4025505c7995000157fdaf

require "test/unit"

def count_digit(number, digit, base=10, from_base=10)
    number.to_i(from_base).to_s(base).chars.count(digit)

    #number.to_i(from_base).to_s(base).count(digit)

end