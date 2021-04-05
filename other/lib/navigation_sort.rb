require 'pry'

def NavigationSort(boxArray)
  solution = []

  boxArray.map do |x|
    newarr = []
    n = x.split(',')
    z = n.map { |x| x.to_i }
    ycoor = z[2] && z.delete_at(2)
    xcoor = z[1] && z.delete_at(1)
    newarr.push(z)
    xcoor == ycoor ? newarr.unshift(ycoor) && newarr.unshift(xcoor) : newarr.unshift(xcoor) && newarr.unshift(ycoor)

    #newarr.flatten.join(',')
    solution.push(newarr.flatten.join(','))
  end
  p solution
end

#puts NavigationSort(["1,1,1,1,1", "2,2,2,1,1", "3,3,3,1,1"])
puts NavigationSort(["3,0,1,1,1", "2,0,2,1,1", "1,0,3,1,1"])


# expected
# 3,0,1,1,1
#2,0,2,1,1
#1,0,3,1,1
