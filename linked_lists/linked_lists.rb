class Node
  attr_accessor :next
  attr_reader :datum
  
  def initialize(datum)
    @next = nil
    @datum = datum
  end

  def append_to_tail(datum)
    current_node = self
    while (current_node.next != nil)
      current_node = current_node.next
    end
    current_node.next = Node.new(datum)
  end

end

class LinkedList
  attr_reader :head, :length

  def initialize(node)
    @head = node
  end

  def append_to_tail(datum)
    self.head.append_to_tail(datum)
  end

  def length
    current_node = self.head
    i = 0
    while (current_node != nil)
      current_node = current_node.next
      i += 1
    end
    i
  end
end

# a = Node.new('a')

# list = LinkedList.new(a)
# list.append_to_tail('b')
# list.append_to_tail('c')
# list.append_to_tail('d')

# puts list.length

class DoublyLinkedNode
  attr_accessor :next, :prev
  attr_reader :datum
  
  def initialize(datum)
    @next = nil
    @prev = nil
    @datum = datum
  end

  def append_to_tail(datum)
    current_node = self
    while (current_node.next != nil)
      current_node = current_node.next
    end
    current_node.next = DoublyLinkedNode.new(datum)
    current_node.next.prev = self
  end

end

a = DoublyLinkedNode.new('a')
list = LinkedList.new(a)

puts list.length
list.append_to_tail('b')
list.append_to_tail('c')
puts list.length