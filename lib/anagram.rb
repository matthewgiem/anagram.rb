require('pry')

class String
  define_method(:anagram)  do
    numbers=*(1..36)
    letter_array = self.gsub(/\s+/, /[[:punct:]]/, "").downcase.split("")
    # letter_array = self.delete(" ").downcase.split("")
    letter_array.each do |letter|
      numbers[letter.to_i(36)]+=1
    end
    letter_array.join
  end
end



# gsub(/[[:punct:]]/, '')
