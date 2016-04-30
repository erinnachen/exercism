class Binary
  VERSION = 2

  attr_reader :number

  def initialize(number)
    if number.match(/\A[01]*\Z/)
      @number = number
    else
      raise ArgumentError
    end
  end

  def to_decimal
    decimal = 0
    number.reverse.chars.each_with_index do |digit, index|
      decimal += (digit.to_i*(2**index))
    end
    decimal
  end
end
