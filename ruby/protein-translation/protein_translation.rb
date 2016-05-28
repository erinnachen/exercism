class Translation
  def self.of_codon(codon)
    mappings[codon]
  end

  def self.of_rna(strand)
    raise InvalidCodonError unless valid_letters?(strand)
    rna = []
    (strand.length / 3).times do |ind|
      codon = of_codon(strand.slice(3*ind, 3))
      return rna if codon == "STOP"
      rna << codon
    end
    rna
  end

  def self.mappings
    {'AUG' => 'Methionine',
     'UUU' => 'Phenylalanine',
     'UUC' => 'Phenylalanine',
     'UUA' => 'Leucine',
     'UUG' => 'Leucine',
     'UCU' => 'Serine',
     'UCC' => 'Serine',
     'UCA' => 'Serine',
     'UCG' => 'Serine',
     'UAU' => 'Tyrosine',
     'UAC' => 'Tyrosine',
     'UGU' => 'Cysteine',
     'UGC' => 'Cysteine',
     'UGG' => 'Tryptophan',
     'UAA' => 'STOP',
     'UAG' => 'STOP',
     'UGA' => 'STOP',}
  end

  def self.valid_letters?(strand)
    return false if /[^ACGU]/ =~ strand
    true
  end
end

class InvalidCodonError < StandardError
end
