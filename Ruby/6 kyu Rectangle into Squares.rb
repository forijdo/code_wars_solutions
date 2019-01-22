# https://www.codewars.com/kata/reviews/5546733a0240a709a20001d1/groups/5c46a1b85c58920001327d16

def sqInRect(lng, wdth)
    
    return nil if lng == wdth
    
    ss = []

    while lng > 0 && wdth > 0 do
      min = [lng, wdth].min     
      lng > wdth ? lng = lng - min : wdth = wdth - min
      ss << min
    end

    ss
end

def sqInRectBest(l, w)
    rects = []
    while l>0 do
      w,l = [w,l].minmax
      rects << w
      l -= w
    end
    rects.size > 1 ? rects : nil
end