class MaxArea

  def max_area(height)
    area = 0
    height.each_with_index do |h, i|
      break if i == height.length - 1

      height.each_with_index do |h2, i2|
        mh = h <= h2 ? h : h2
        distance = i2 - i
        if i2 == i then
          next
        elsif h == 1 
          area = (height.length - 1) - i
        elsif area > mh * distance 
          area 
        else
          area = mh * distance
        end
      end
    end
    area
  end
end
# Notes:
# obtain second index to compare
# calculate distance
# calculate max height for span. Obtain max height and second height
# min height is 1
# Make it stop on the last one

# container with most water challenge: https://leetcode.com/problems/container-with-most-water/
#
# Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of the line i is at (i, ai) and (i, 0). Find two lines, which, together with the x-axis forms a container, such that the container contains the most water.

# Notice that you may not slant the container.
