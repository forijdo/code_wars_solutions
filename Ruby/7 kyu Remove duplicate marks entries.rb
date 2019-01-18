# https://www.codewars.com/kata/reviews/53ce88b13912fc89b80007ab/groups/5c415fbe122a720001058a3a

def dataclean(values)

    # values.uniq(&:first).sort_by(&:last) if values

    values ? values.uniq{ |e| e[0] }.sort_by{ |e| e[1] } : nil
    
  end

