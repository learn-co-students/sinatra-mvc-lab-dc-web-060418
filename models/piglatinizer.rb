class PigLatinizer

  def piglatinize(text)
    ret = ""

    text.scan(/\w+/).each do |word|
      initial_consonants = word.slice(/\A[^aeiouAEIOU]+/)
      if !initial_consonants
        initial_consonants = ""
      end

      suffix = initial_consonants.length == 0 ? "way" : "ay"
      stem = word.slice(initial_consonants.length,
                        word.length - initial_consonants.length)

      if ret.length > 0
        ret += " "
      end
      ret += stem + initial_consonants + suffix
    end

    ret
  end

end
