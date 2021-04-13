class MaxArea

  def max_area(height)
    area = 0

    height.each_with_index do |h, i|
      area = unless i == height.length - 1
               sec_i = i + 1
               h2 = height[sec_i]
               mh = h <= h2 ? h : h2
               distance = sec_i - i

               h == 1 ? ((height.length - 1) - i) * h : mh * distance
             end
    end
    area
  end

  def calc_area(m_height, distance); end
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
