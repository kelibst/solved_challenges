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

   def add_at(ind, item)
      new_node = Node.new(item)
      if ind == 0
        new_node.next_node = @head
        @head = new_node
        @tail = @head.next_node if @tail = @head
      else
        prev_node = earlier_node(ind)
        cur = prev_node.next_node
        return if prev_node.nil?

        new_node.next_node = cur

        prev_node.next_node = new_node
        @tail = new_node if (@tail == cur)
      end
   end

   def remove(index)

    if index == 0
     @head = @head.next_node
   else
      prev_node = earlier_node(index)
      current = prev_node.next_node
      if current
      prev_node.next_node = prev_node.next_node.next_node
      @tail = prev_node if @tail == current
      end

    end
  end


   private

   def earlier_node(ind)
    node = @head
    count = 0

    while node && (count == (ind -2))
      node = node.next_node
      count+=1
    end
    node
   end


   def get_node(index)
    node = @head
    counter = 0

    while node && counter < index
      node = node.next_node
      counter += 1
    end
     node
  end


end
  
list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts 'list ', list.get(2)
# => 11


puts list.get(3)
# => 5