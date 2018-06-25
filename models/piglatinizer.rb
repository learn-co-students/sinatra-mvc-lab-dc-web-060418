class PigLatinizer
attr_accessor :words



  def piglatinize(words)
    piggy = []
    words.split(" ").each do |word|
        if !["a", "e", "i", "o", "u", "O", "U", "I", "E", "A"].include?(word[0])
            word_array_end = []
            i = 0
            until  ["a", "e", "i", "o", "u", "O", "U", "I", "E", "A"].include?(word[i]) do
              word_array_end.push(word[i])
              i +=1
            end
            piggy << word[i..word.length] + word_array_end.join() + "ay"
        else
          piggy << word +"way"
        end
    end
    piggy.join(" ")
  end

end
