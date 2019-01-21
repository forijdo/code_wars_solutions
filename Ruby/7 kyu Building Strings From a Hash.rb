# https://www.codewars.com/kata/reviews/51c7dc308a35b6d7c60002ef/groups/51d47dd28f6ff265f1001584

def solution(pairs)
    pairs.map{|k,v| "#{k} = #{v}"}.join(',')
  end