# Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
# `rna_transcription_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/rna-transcription` directory.
class Complement
  @diccionary = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(nucleotide)
    return '' if nucleotide.empty?

    if nucleotide.length > 1
      str_arr = nucleotide.chars
      return str_arr.map { |ch| @diccionary[ch] }.join
    end

    @diccionary[nucleotide]
  end
end
