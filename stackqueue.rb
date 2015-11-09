require_relative 'mystack'
class StackQueue
  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def enqueue(el)
    @in_stack.push(el)
  end

  def dequeue
    return nil if empty?
    transfer! if @out_stack.empty?
    @out_stack.pop
  end

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

  private
  def transfer!
    until @in_stack.empty?
      @out_stack.push(@in_stack.pop)
    end
  end

end
