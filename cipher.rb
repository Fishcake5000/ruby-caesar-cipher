# Returns a shifted character code if it corresponds to an English letter, or unchanged if not
def shift_char(char_code, shift = 0)
    if (65 <= char_code && char_code < 91) #A-Z
        return (char_code - 65 + shift) % 26 + 65
    end
    if (97 <= char_code && char_code < 123) #a-z
        return (char_code - 97 + shift) % 26 + 97
    end
    char_code
end

# Returns encoded string using caesar cipher, only applies to letters a-z, maintains case
def caesar_cipher(str = '', shift = 0)
    str.bytes.reduce('') do |result, char_code|
        result += shift_char(char_code, shift).chr
    end
end

puts caesar_cipher('Hello world! =)', 20)