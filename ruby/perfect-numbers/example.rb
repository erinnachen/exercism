class PerfectNumber
  VERSION = 1

  def self.classify(number)
    raise RuntimeError if number < 1
    sum = factor_sum(number)
    return "perfect" if sum == number
    return "abundant" if sum > number
    "deficient"
  end

  def self.factor_sum(number)
    (1...number).select do |guess|
      number % guess == 0
    end.reduce(0,:+)
  end
end
