class PhoneNumber
  attr_reader :raw_number
  def initialize(raw_number)
    @raw_number = raw_number
  end

  def number
    number = parse_raw
    number = remove_leading_one(number)
    return '0000000000' unless valid_number?(number)
    number
  end

  def area_code
    number[0..2] if number
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..-1]}"
  end

  private

    def parse_raw
      raw_number.gsub(/[^\d]/,"")
    end

    def valid_number?(number)
      number.length == 10 && !raw_number[/[a-z]/i]
    end

    def remove_leading_one(number)
      return number[1..-1] if number.length == 11 && number.start_with?('1')
      number
    end
end
