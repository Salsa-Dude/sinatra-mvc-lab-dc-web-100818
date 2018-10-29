

class PigLatinizer(string)
  words = string.split(' ')
  vowels = ['a', 'e', 'i', 'o', 'u']

  words.map each do |word|
    # For words that begin with vowel sounds, one just adds "way"
    if vowels.include?(word[0].downcase)
      word + 'way'
    else
      # When words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end 
      word.each do |letter|
        if !vowels.include?(letter)
          consonants << letter
        end

      end

    
  end
  
end