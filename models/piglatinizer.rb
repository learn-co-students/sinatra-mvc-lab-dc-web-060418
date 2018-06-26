class PigLatinizer

  # attr_accessor :words
  #
  # def initialize
  #   @words = sentence
  # end

  # def to_words(sentence)
  #   string.split(" ")
  # end

  def piglatinize(sentence)
    array = sentence.split(" ")
    vowels = ["a", "e", "i", "o", "u"]
    new_array = []
    array.each do |word|
      if vowels.include?(word[0].downcase)
        word << "way"
      else
        until vowels.include?(word[0].downcase)
          word = word.split("").rotate.join
        end
        word.insert(-1, "ay") if vowels.include?(word[0])
      end
      new_array << word
      # binding.pry
    end
    # binding.pry
    new_array.join(" ")
    #new_array
  end

end
