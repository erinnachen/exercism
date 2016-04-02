class Complement
  VERSION = 3

  def self.complements
    {'C' => 'G','G' => 'C', 'T' => 'A', 'A'=>'U'}
  end

  def self.of_dna(strand)
    strand.chars.map do |c|
      raise ArgumentError unless complements[c]
      complements[c]
    end.join
  end
end
