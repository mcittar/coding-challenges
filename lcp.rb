require 'byebug'

def lcp(nums)
  return 0 if nums.max.zero?
  return nums.first if nums.length == 1
  max = curr_max = curr_min = 1

  nums.each do |el|

    if el > 0
      curr_max = curr_max * el
      curr_min = [curr_min * el, 1].min
    elsif el == 0
      curr_max = 1
      curr_min = 1
    else
      holder = curr_max
      curr_max = [curr_min * el, 1].max
      curr_min = holder * el
    end

    if max < curr_max
      max = curr_max
    end
  end

  max
end

puts lcp([7, -2, -4]) # => 56
puts lcp([3, -1, 4]) # => 4
puts lcp([2, -5, -2, -4, 3]) # => 24
puts lcp([-2, 3, -4]) # => 24
