# Start with your code from LinkedList challenge.

class LinkedList
    attr_accessor :res
    def initialize(res = [])
      @res = res
    end
    
    def add(number)
      @res.push(number)
    end
    def add_at(index, item)
      @res.insert(index, item)
    end
    
    def remove(index)
      @res.delete_at(index);
    end
    
    def get(index)
      return @res[index];
    end
   @res
end

class Stack 
  def initialize(res = [])
    @res = res
  end
  def push(num)
    @res.push(num)
  end
  
  def pop
    # your code here
    return !@res.empty? ? @res.pop : nil
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3