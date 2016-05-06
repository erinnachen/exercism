class SumOfMultiples
  attr_reader :nums

  def initialize(*args)
    @nums = args.sort
  end

  def to(nmax)
    nums.flat_map do |base|
      get_multiples(base, nmax)
    end.uniq.reduce(0,&:+)
  end

  def get_multiples(base, nmax)
    (1..(nmax-1)/base).map { |n| n*base }
  end
end
