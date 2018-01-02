class Complement
  @@dna_to_rna = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  def self.of_dna(dna)
    return '' if dna['X']
    return dna.scan(/\w/).map { |nucleotide| @@dna_to_rna[nucleotide] }.join
  end
end

module BookKeeping
  VERSION = 4
end
