# https://www.codewars.com/kata/reviews/5a3abc231c1761dfc50017ad/groups/5c3f3a2220c1e70001196eea

def ordered_count(s)
    a = Hash.new(0)
    s.chars.map{ |e| a[e] += 1 }
    a.to_a

    # str.chars.uniq.map{|i| [i, str.count(i)]}

end