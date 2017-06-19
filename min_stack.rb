class MinStack

  def initialize
    @stack = []
    @min = []
  end

  def push(val)
    @stack << val
    if @min.empty?
      @min << val
    else
      @min << (val > @min.last ? @min.last : val)
    end
  end

  def pop
    @min.pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def min
    @min.last
  end

end

min = MinStack.new
min.push(3)
min.push(4)
min.push(5)
p min.min == 3
min.pop
p min.min == 3
