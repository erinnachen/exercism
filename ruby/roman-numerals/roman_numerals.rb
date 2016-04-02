class Integer
  VERSION = 1
  def to_roman
    roman = ''
    number = self
    roman_symbols.each_with_index do |(base, symbol), ind|
      divided = number / base
      puts "STEP: #{number}, #{divided}, #{base}, "
      if ind > 0 && divided == 4
        roman += symbol + roman_symbols[ind-1][1]
      elsif ind > 0 && divided == 1 && 
        divided.times { roman += symbol}
      end
      number %= base
    end
    roman
  end

  def roman_symbols
    [[1000, 'M'], [500, 'D'],
     [100, 'C'],  [50, 'L'],
     [10, 'X'],   [5, 'V'],
     [1, 'I']]
  end
end
