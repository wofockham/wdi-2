# Singly Linked List for Ruby
# BY JOEL


class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def to_s
    @value || nil
  end
end

class SinglyLinkedList
  attr_accessor :head

  def initialize(first_value = nil)
    @head = Node.new(first_value) if first_value
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = @head
    @head = node
  end

  def append(value)
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value)
  end

  def remove
    @head = @head.next_node
  end

  def insertAfter(node, value)
    new_node = Node.new(value)
    new_node.next_node = node.next_node
    node.next_node = new_node
  end

  def last
  end

  def length
  end

  def find(value)
  end

  def reverse
  end
end
