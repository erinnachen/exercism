class Hamming
  VERSION = 1

  def self.compute(s1, s2)
    raise ArgumentError if s1.length != s2.length
    sc1 = s1.chars
    sc2 = s2.chars

    count = 0
    (0...sc1.length).each do |i|
      count += 1 if sc1[i] != sc2[i]
    end
    count

  end
end
