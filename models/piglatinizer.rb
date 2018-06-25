class PigLatinizer
    #attr_accessor :text

    # def initialize
    # end

    def piglatinize(text)
       text_array = text.split(" ")
       new_arr = text_array.map do |word|
        pigify_word(word)
       end
       new_arr.join(" ")       
    end

    def pigify_word(word)
        #example: "happy" = "appyhay", "eat" = "eatway" or "eatay", 
        new_word = ""
        word_array = word.split("")
        vowels = "aeiouy".split("")
        if vowels.include?(word_array[0].downcase)
            #first letter is vowel
            new_word = word + "way"
        elsif vowels.include?(word_array[1].downcase) 
            #only first char is consonant
            first_letter = word_array.shift
            new_word = word_array.join("") + first_letter + "ay"
        elsif vowels.include?(word_array[2].downcase)
            #first two chars are consonants
            first_letters = word_array[0,2].join
            new_word = word_array[2..word_array.length].join + first_letters + "ay"
        else 
            #first three chars are consonants
            first_letters = word_array[0,3].join
            new_word = word_array[3..word_array.length].join + first_letters + "ay"
        end
        new_word
    end
end