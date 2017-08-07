class Stack
  def initialize
    @top = nil
  end

  def pop
    if @top == nil
      puts 'Stack is empty!'
    else
      item = @top
      @top = top.next
      item
    end
  end

  def push(data)
    n = Node.new(data)
    n.next = @top
    @top = n
  end

  def peek
    @top.data
  end

  def is_empty?
    @top == nil
  end
end

class Node
  attr_reader :data
  attr_accessor :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

s = Stack.new
s.push('a')

puts s.peek