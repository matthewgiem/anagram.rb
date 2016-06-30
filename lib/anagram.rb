require('pry')
class String
  define_method(:anagram_search) do |str|
    anagrams = []
    arr = str.split(",")
    input_word = self.anagram
    arr.each  do |word|
      array_word = word.anagram
      if array_word == input_word
        anagrams.push(word)
      end
    end
    anagrams
  end
end


class String
  define_method(:anagram)  do
    numbers=*(1..36)
    letter_string = self.downcase()
    letter_string.gsub!(/\s+/, "")
    letter_string.gsub!(/[[:punct:]]/, "")
    letter_array = letter_string.split("")
    letter_array.each do |letter|
      numbers[letter.to_i(36)]+=1
    end
    numbers.join
  end
end
