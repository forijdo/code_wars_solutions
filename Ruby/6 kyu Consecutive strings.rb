# https://www.codewars.com/kata/reviews/56a5d99e7297212bec000008/groups/5c3ecfc04acc500001eacace

require "test/unit"

def longest_consec(a, k)

    # k > strarr.size || k <= 0 ? '' : strarr.each_cons(k).map(&:join).max_by(&:size)

    return '' if k <= 0 || a.size == 0 || k > a.size

    maxs = ''
    
    for pos in (0...a.length)
    
        s = a[pos, k].join
        
        maxs = s if s.size > maxs.size
    end

    maxs
end

class TestSolution < Test::Unit::TestCase
 
    def test_simple

        assert_equal longest_consec([
            "zone",
            "abigail",
            "theta",
            "form",
            "libe",
            "zas"],
            -2), ""        

        assert_equal longest_consec([
            "it",
            "wkppv",
            "ixoyx", 
            "3452",
            "zzzzzzzzzzzz"],
            15), ""

        assert_equal longest_consec([
            "it",
            "wkppv",
            "ixoyx",
            "3452",
            "zzzzzzzzzzzz"],
            0), ""

        assert_equal longest_consec([], 3), ""

        assert_equal longest_consec([
            "zone",
            "abigail",
            "theta",
            "form",
            "libe",
            "zas"],
            2), "abigailtheta"

        assert_equal longest_consec([
            "ejjjjmmtthh",
            "zxxuueeg",
            "aanlljrrrxx",
            "dqqqaaabbb",
            "oocccffuucccjjjkkkjyyyeehh"],
            1), "oocccffuucccjjjkkkjyyyeehh"

        assert_equal longest_consec([
            "itvayloxrp",
            "wkppqsztdkmvcuwvereiupccauycnjutlv",
            "vweqilsfytihvrzlaodfixoyxvyuyvgpck"],
            2), "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck"

        assert_equal longest_consec([
            "wlwsasphmxx",
            "owiaxujylentrklctozmymu",
            "wpgozvxxiu"],
            2), "wlwsasphmxxowiaxujylentrklctozmymu"

        assert_equal longest_consec([
            "it",
            "wkppv",
            "ixoyx",
            "3452",
            "zzzzzzzzzzzz"],
            3), "ixoyx3452zzzzzzzzzzzz"

    end
   
end