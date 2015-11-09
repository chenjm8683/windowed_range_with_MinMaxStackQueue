class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.delete_at(-1)
  end

  def push(el)
    @store << el
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    size == 0
  end
end
