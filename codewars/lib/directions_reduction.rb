class DirectionsReduction
  def dirReduc(arr)
    opp = { 'NORTH' => 'SOUTH', 'SOUTH' => 'NORTH', 'WEST' => 'EAST', 'EAST' => 'WEST' }
    #arr = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
    dir = []
    binding.pry
    dir
  end
end
#
# Example
#["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
#
#You can immediatly see that going "NORTH" and immediately "SOUTH" is not reasonable, better stay to the same place! So the task is to give to the man a simplified version of the plan. A better plan in this case is simply:
#
#["WEST"]
