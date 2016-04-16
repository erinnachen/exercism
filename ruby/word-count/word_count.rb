class Phrase
  VERSION = 1

  attr_reader :phrase
  def initialize(phrase)
    @phrase = process_phrase(phrase)
  end

  def word_count
    counts = Hash.new(0)
    phrase.split.each { |word| counts[word] += 1 }
    counts
  end

  def process_phrase(phrase)
    phrase.downcase
          .gsub(/,/, ' ')
          .gsub(/[^a-z\d'\s]+/, '')
          .gsub(/(?<=\s)'(?=\S)/, '')
          .gsub(/(?<=\S)'(?=\s)/, '')
  end
end
