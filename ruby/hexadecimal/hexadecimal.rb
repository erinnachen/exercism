class Hexadecimal
  attr_reader :hex
  def initialize(hex)
    @hex = hex
  end

  def to_decimal
    return 0 if /[^\da-f]/ =~ hex
    hex.reverse.chars.each_with_index.reduce(0) do |dec, (c, ind)|
      dec + values[c]*16**ind
    end
  end

  private

    def values
      {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3,
       '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7,
       '8'=> 8, '9'=> 9, 'a'=> 10, 'b'=> 11,
       'c'=> 12, 'd'=> 13, 'e'=> 14, 'f'=> 15
      }
    end
end
