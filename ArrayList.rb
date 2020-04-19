class ArrayList
   
   attr_reader :arr;
   
   def initialize
       @arr = []
   end
   
   # Add the item to the array
   def add(value)
       @arr.push(value)
   end
   
   # Return the value stored at the given index
   def get(index)
       return @arr[index]
   end
   
   # Insert the item to the array at the given index
   def insert(index, value)
       if index <= @arr.length
        newArr = []
        (@arr.size + 1).times do |i|
           if i < index
               newArr.push(@arr[i])
           elsif i == index
               newArr.push(value)
           else
               newArr.push(@arr[i - 1])
           end
       end   
       end
       @arr = newArr
   end
   
   # Delete the specified item
   def delete(value)
       @arr.delete(value)
   end
   
   # Returns an array that contains the items of the 
   # specifed type from the original array
   def allType(type)
       newArr = []
       @arr.each do |value|
           if (value.instance_of? type)
               newArr.push(value)
           end
       end
       return newArr
   end
   
   # Returns true if the array contains the value
   def contains(value)
       if (@arr.any? {|elem| elem == value})
           return true
       else
           return false
       end
   end
   
   def to_s
       arr = "["
       (@arr.size - 1).times do |i|
           arr = arr + @arr[i].to_s + ", "
       end
       arr = arr + @arr[@arr.size-1].to_s + "]"
       return arr
   end
   
end