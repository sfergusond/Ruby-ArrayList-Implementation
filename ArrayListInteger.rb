class ArrayListInteger < ArrayList
    
    def initialize
        super
    end
    
    # Adds only if the value is an Integer
    def add(value)
        if (value.instance_of? Integer)
            super
        end
    end
    
    # Inserts only if the value is an Integer
    def insert(index, value)
        if (value.instance_of? Integer)
            super
        end
    end
            
    # Returns an int which is the sum of each array item
    def addAll
        return @arr.inject(0) {|result, x| result + x}
    end
    
    # Returns an in which is the factor of each array item
    def multiplyAll
        return @arr.inject(1) {|result, x| result * x}
    end
    
    # Adds the amount to each value in the array
    def addToAll(num)
        newArr = @arr.map {|x| x +  num}
        @arr = newArr
    end
    
    # Returns an array which contains the items from 
    # the original array that are divisible by num
    def divisibles(num)
        newArr = @arr.inject([]) do |result, elem|
            result << elem if elem % num == 0
            result
        end
        return newArr
    end
    
    # Concatenates two lists of Integers
    def addList(list)
       if (list.instance_of? ArrayListInteger)
        @arr = (list.arr).inject(@arr) do |result, x|
           result << x
           result
        end
       end
    end
    
end