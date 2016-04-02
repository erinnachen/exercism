class Squares
  VERSION = 2

  attr_reader :nmax
  def initialize(n)
    @nmax = n
  end

  def square_of_sum
    (0..nmax).reduce(:+)**2
  end

  def sum_of_squares
    (0..nmax).reduce(0) do |sum, num|
      sum + num**2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
