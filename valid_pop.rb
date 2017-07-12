require 'byebug'
push = [1, 2, 3, 4, 5]
def valid?(push, pop)
  # byebug
  pop = pop.dup
  stack = [push.shift]
  until pop.empty?
    while stack.last == pop.first && (!pop.empty? && !stack.empty?)
      pop.shift
      stack.pop
    end
    stack.push(push.shift) unless push.empty?
    if push.empty? && stack.last != pop.first
      return false
    end
  end
  true
end

p valid?(push, [4, 5, 3, 2, 1])
p valid?(push, [4, 3, 5, 1, 2])
