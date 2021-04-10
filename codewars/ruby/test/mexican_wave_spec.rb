require_relative '../lib/mexican_wave'

RSpec.describe MexicanWave do
  describe "Mexican wave with a string" do
    it "Returns an array that ressambles a mexican wave using a given string" do
      wave1 = MexicanWave.new
      expect(wave1.wave("hello")).to eq(["Hello", "hEllo", "heLlo", "helLo", "hellO"])

      result = ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
      expect(wave1.wave("codewars")).to eq(result)
      result = []
      expect(wave1.wave("")).to eq(result)
      result = ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
      expect(wave1.wave("two words")).to eq(result)
      result = [" Gap ", " gAp ", " gaP "]
      expect(wave1.wave(" gap ")).to eq(result)
    end
  end
end
