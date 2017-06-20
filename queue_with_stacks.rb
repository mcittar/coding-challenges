class QueueStack
  def initialize
    @new_stack = []
    @old_stack = []
  end

  def enqueue(val)
    @new_stack << val
  end

  def dequeue
    shift_stacks
    @old_stack.pop
  end

  private

  def shift_stacks
    if @old_stack.empty?
      until @new_stack.empty?
        @old_stack.push(@new_stack.pop)
      end
    end
  end

end

q = QueueStack.new
q.enqueue(1)
q.enqueue(3)
p q.dequeue == 1
q.enqueue(4)
q.enqueue(6)
p q.dequeue == 3
p q.dequeue == 4
p q.dequeue == 6
