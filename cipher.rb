def shift_char(char_code, shift = 0)
    if (65 <= char_code && char_code < 91)
        return (char_code - 65 + shift) % 26 + 65
    end
    if (97 <= char_code && char_code < 123)
        return (char_code - 97 + shift) % 26 + 97
    end
    char_code
end

def caesar_cipher(str = '', shift = 0)
    str.bytes.reduce('') do |result, char_code|
        result += shift_char(char_code, shift).chr
    end
end

require 'pry'
binding.pry