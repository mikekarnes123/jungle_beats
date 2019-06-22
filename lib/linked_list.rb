require 'pry'
require_relative 'node'
class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def empty?
    head.nil?
  end

  def counter(node, counter)
    number = 0
    return 0 if empty?
      counter += 1
      if node.tail?
        counter
      else
        counter(node.next_node, counter)
      end
  end

  def count
    counter(self.head, 0)
  end

  def to_string
    collect_data(self.head)
  end

  def append(data)
    @head = Node.new(data)
  end
end
