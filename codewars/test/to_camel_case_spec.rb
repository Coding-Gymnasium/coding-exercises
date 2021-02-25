require_relative '../lib/to_camel_case'
require 'pry'

RSpec.describe ToCamelCase do
  before :each do
    @tcc = ToCamelCase.new
  end

  it "Can convert a string to camel case" do
    expect(@tcc.to_camel_case("the_stealth_warrior")).to eq("theStealthWarrior")
    expect(@tcc.to_camel_case("The-Stealth-Warrior")).to eq("theStealthWarrior")
    expect(@tcc.to_camel_case("the_stealth_warrior")).to eq("theStealthWarrior")
  end
end

#Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

#Examples
#"the-stealth-warrior" gets converted to "theStealthWarrior"
#"The_Stealth_Warrior" gets converted to "TheStealthWarrior"
