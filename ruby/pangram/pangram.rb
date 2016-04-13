module Pangram
  VERSION = 1

  def self.is_pangram?(str)
    str.gsub!(/\W+/, '')
    str.downcase.chars.uniq.sort == ('a'..'z').to_a
  end
end
