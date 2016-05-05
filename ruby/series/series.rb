class Series
  attr_reader :numbers
  def initialize(numbers)
    @numbers = numbers
  end

  def slices(nsize)
    raise ArgumentError if nsize > numbers.length
    max_ind = numbers.length-nsize
    (0..max_ind).map do |ind|
      substring = numbers[ind...ind+nsize]
      substring.chars.map(&:to_i)
    end
  end
end
