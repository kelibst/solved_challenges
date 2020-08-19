# Start with your code from last challenge.

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
   
  end
  
  list = LinkedList.new
  
  list.add(3)
  list.add(5)
  list.add_at(1, 11)
  list.add_at(0, 13)
  
  puts list.get(2)
  # => 11
  
  
  puts list.get(3)
  # => 5