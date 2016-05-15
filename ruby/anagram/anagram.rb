class Anagram
  attr_reader :match_word
  def initialize(match_word)
    @match_word = match_word.downcase
  end

  def match(words)
    words.select do |word|
      !same_word?(word) && is_match?(word)
    end
  end

  private

    def sorted(word)
      word.chars.sort.join
    end

    def is_match?(word)
      sorted(word.downcase) == sorted(match_word)
    end

    def same_word?(word)
      word.downcase == match_word
    end
end
