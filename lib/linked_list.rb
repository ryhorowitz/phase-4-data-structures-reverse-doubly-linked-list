require 'pry'
require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return if @head.nil? && @tail.nil?
    return if @head == @tail

    curr = @head
    while curr
      temp = curr.prev_node
      binding.pry
      curr.prev_node = curr.next_node
      curr.next_node = temp
      curr = curr.prev_node
    end
    temp = @head
    @head = @tail
    @tail = temp
  end
end
