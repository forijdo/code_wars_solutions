# https://www.codewars.com/kata/reviews/52fea6fd158f0576b800008c/groups/5c4fdaf789c85100012d8530

module Converter
    def self.to_ascii(hex)
      hex.scan(/../).map  { |i| i.to_i(16).chr }.join
    end
  
    def self.to_hex(ascii)
      ascii.codepoints.map{ |i| i.to_s(16) }.join
    end
  end

=begin
    
    module Converter
    def self.to_ascii(hex)
        [hex].pack("H*")
    end

    def self.to_hex(ascii)
    ascii.unpack("H*")[0]
    end
    end
    
end