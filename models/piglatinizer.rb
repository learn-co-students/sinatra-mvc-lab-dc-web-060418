
class PigLatinizer
    
    def piglatinize(words)
        vowels = ["a", "e", "i", "o", "u"]
        words_arr = words.split(" ")
        piggy_arr = []
      
        words_arr.each do |word|
          if vowels.include?(word[0].downcase)
            word += "way"
          else
            until vowels.include?(word[0].downcase)
              word = word.split("").rotate.join
            end
            word.insert(-1, "ay") if vowels.include?(word[0].downcase)
          end
          piggy_arr << word
        end
          piggy_arr.join(" ")
    end

end