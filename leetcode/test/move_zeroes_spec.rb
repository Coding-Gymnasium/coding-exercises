require_relative '../lib/move_zeroes'

RSpec.describe MoveZeroes do
  it "Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements." do
    new_arr = MoveZeroes.new
    expect(new_arr.move_zeroes([0,1,0,3,12])).to eq([1,3,12,0,0])
  end

end
