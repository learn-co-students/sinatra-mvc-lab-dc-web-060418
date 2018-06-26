class PigLatinizer
    attr_accessor :str
    VOWELS = ["a", "e", "i", "o", "u"]
   

    def piglatinize(user_str)
        @str = user_str
        self.convert
    end
    def convert
        pig_latin = self.str.split.map{|word| convert_each_word(word)}.join(" ")
    end

    def convert_each_word(word)
        if VOWELS.include?(word[0].downcase)
            #First letter is vowel
            return word+ "way"
        else
            #First letter is a consonant
            vowel = false
            char_arr = word.chars
            leading_consonants = ""
            index = 0
            while vowel == false
                vowel = true if VOWELS.include?(char_arr[index].downcase)
                if vowel == false
                    leading_consonants+=char_arr[index]
                    index+=1
                end
            end
            
            word.slice(index...word.length) + leading_consonants + "ay" 
        end
    end
end