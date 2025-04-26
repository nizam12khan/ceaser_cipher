def ceaser_cipher(string, shift)
    alphabet = ("a".."z").to_a
    ciphered = string.chars
    ciphered.each_with_index do |x,y|
     if alphabet.include?(x.downcase)
         ciphered[y] = alphabet[(alphabet.find_index(x.downcase) + shift) % 26]
           ciphered[y] = ciphered[y].upcase if x == x.upcase
     end
    end      
  end