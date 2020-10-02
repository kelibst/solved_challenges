# Start with your code from last challenge.

class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
   attr_reader :tail
   @head = nil
   @tail = nil

   def add(num)
      node = Node.new(num)

      if @head.nil?
        @head = node
        @tail = node
      else
        @tail.next_node = node
        @tail = node
      end
   end

   def get(ind)
      cur = @head
      count = 0
      value = nil

      while cur
        if count === ind
          value = cur.value
          break
        end
        cur = cur.next_node
        count +=1
      end
      
      value
   end
end
  
  list = LinkedList.new
 
list.add(3)

list.add(5)

puts list.get(1)

# => 5