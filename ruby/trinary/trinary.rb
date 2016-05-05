class Trinary
  attr_reader :tri_num
  def initialize(tri_num)
    @tri_num = tri_num.reverse
  end

  def to_decimal
    return 0 unless is_trinary?
    (0...tri_num.length).reduce(0) do |dec, ind|
      dec + tri_num[ind].to_i * 3**ind
    end
  end

  def is_trinary?
    !(tri_num=~/[^0-2]/)
  end

end
