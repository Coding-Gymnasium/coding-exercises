require_relative '../lib/write_up_expression'
require 'pry'

RSpec.describe WriteUpExpression do
  before :each do
    @wue = WriteUpExpression.new
  end

  it 'Writes up the expression' do
    expect(@wue.expression_out('1 + 3')).to eq('One Plus Three')
    expect(@wue.expression_out('2 - 10')).to eq('Two Minus Ten')
    expect(@wue.expression_out('6 ** 9')).to eq('Six To The Power Of Nine')
    expect(@wue.expression_out('5 = 5')).to eq('Five Equals Five')
    expect(@wue.expression_out('7 * 4')).to eq('Seven Times Four')
    expect(@wue.expression_out('2 / 2')).to eq('Two Divided By Two')
    expect(@wue.expression_out('8 != 5')).to eq('Eight Does Not Equal Five')
    expect(@wue.expression_out('2 x 3')).to eq("That's not an operator!")
  end
end
