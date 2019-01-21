# https://www.codewars.com/kata/reviews/5b561740f6f55c7571000826/groups/5b578f1791ea28214b0020f5

def invert_hash(hash)
    hash.collect { |k, v| [v, k] }.to_h

    #hash.map(&:reverse).to_h

  end