# Start with your code from last challenge.

class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
end

  
  
  class Stack
    @head = nil
	@tail = nil
    @min  = nil
    
    def min
		@min.value unless @min.nil?
	end

      def push(item)
          new_node = Node.new(item, @head)
          if @head.nil?
            @tail =	new_node
			@min = new_node
          end
          min_val = @min.value unless @min.nil?
            @min = Node.new(item, @min) if min_val > item
		    @head = new_node
		    return
      end
  
      def pop
          raise 'empty' if @head.nil?
          @min = @min.next_node if @min.value == @head.value
          value = @head.value
          @head = @head.next_node
          value
      end
  end

  stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3