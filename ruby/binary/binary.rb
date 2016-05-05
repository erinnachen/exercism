class Binary
  VERSION = 2

  attr_reader :number

  def initialize(number)
    raise ArgumentError unless is_binary?(number)
    @number = number.reverse
  end

  def to_decimal
    (0...number.length).reduce(0) do |dec, ind|
      dec + number[ind].to_i*2**ind
    end
  end

  def is_binary?(number)
    !number.match(/[^01]/)
  end
end
