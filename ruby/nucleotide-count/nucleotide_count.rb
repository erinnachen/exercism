class Nucleotide
  attr_reader :sequence, :counts
  def initialize(sequence)
    @sequence = sequence
    @counts = count_sequence
  end

  def self.from_dna(sequence)
    raise ArgumentError if sequence[/[^atcg]/i]
    Nucleotide.new(sequence)
  end


  def count(nucleotide)
    counts[nucleotide]
  end

  def histogram
    { 'A'=>counts['A'],
      'T'=>counts['T'],
      'C'=>counts['C'],
      'G'=>counts['G'],
    }
  end

  private

    def count_sequence
      sequence.chars.each_with_object(Hash.new(0)) do |char, counts|
        counts[char.upcase]+=1
      end
    end
end
