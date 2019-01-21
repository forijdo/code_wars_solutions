# https://www.codewars.com/kata/reviews/5c40e793e0d1d1000146e100/groups/5c40f6ba48a0dd0001db2ac0

def generate_shape(n)
    (1..n).map { "+" * n }.join("\n")

    #("#{"+" * n}\n" * n).chop

end