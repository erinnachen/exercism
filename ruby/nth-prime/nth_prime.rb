class Prime
  # attr_reader :primes
  # def initialize(nmax = 1000000)
  #   @primes = sieve_primes(nmax)
  # end

  def self.nth(n, nmax = 2_000_000)
    raise ArgumentError if n < 1
    sieve_primes(nmax)[n-1]
  end

  private

    def self.sieve_primes(nmax)
      candidates = Array.new((nmax+1), true)
      candidates[0] = false
      candidates[1] = false
      limit = Math.sqrt(nmax).floor.to_i
      (2..limit).each do |ind|
        if candidates[ind]
          ind2 = 0
          while (ind**2 + ind2*ind) <= nmax
            candidates[ind**2 + ind2*ind] = false
            ind2+=1
          end
        end
      end
      prime_list = []
      candidates.each_with_index do |candidate, ind|
        prime_list << ind if candidate
      end
      prime_list
    end
end
