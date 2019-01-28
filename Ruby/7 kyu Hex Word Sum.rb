# https://www.codewars.com/kata/reviews/5c48e1df5186660001a6e940/groups/5c4e9712d0a57a0001c5b90c

def hex_word_sum(s)
  
    return 0 if s.empty?
    
    s.split.map do |wi|
    
      w = wi.gsub('S','5').gsub('O','0')
      
      w.match(/^[0-9,A-F]+$/) ? w.to_i(16) : 0
      
    end.sum
    
  end