class Node
  attr_accessor :next, :value
  
  def initialize(value)
    @value = value
    @next = nil
  end

end

class LinkedList
  attr_reader :head, :size
  def initialize
    @head = nil
  end

  def add(value)
    if @head.nil?
      @head = Node.new(value)  
    else
      current = @head
      while current.next != nil
        current = current.next
      end
      current.next = Node.new(value)

    end
  end

  def display
    current = @head
    while current != nil
      print "#{current.value} -> "
      current = current.next
    end
    puts "nil"
  end

  def display_recursive
    display_recursive_helper(head)
  end

  def display_recursive_helper(node)
    if node.nil?
      puts "nil"
    else
      print "#{node.value} -> "
      print display_recursive_helper(node.next)
    end
  end
end



l = LinkedList.new
l.add(1)
l.add(2)
l.add(3)

puts "Non-recursive"
l.display

puts "Recursive"
l.display_recursive





