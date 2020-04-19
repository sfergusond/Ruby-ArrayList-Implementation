require './ArrayList.rb'
require './ArrayListInteger.rb'

class ArrayListTest

    # Two lambdas that create a list of length num 
    # with random integers between 0-100
    arr_creator_lambda = ->(num) {
        arr = ArrayList.new
        num.times do 
            arr.add(rand 100)
        end
        return arr
    }
    
    intArr_creator_lambda = ->(num) {
        arr = ArrayListInteger.new
        num.times do 
            arr.add(rand 100)
        end
        return arr
    }
    
    puts "--------TESTING ARRAYLIST----------"
    puts "---- Printing ArrayList ----"
    test = arr_creator_lambda.call(10)
    puts test
    test.add("hello")
    test.insert(3, "String inside")
    puts "---- add(hello) and insert(3, String inside) ----"
    puts test
    puts "---- get(8) ----"
    puts test.get(8)
    puts "---- contains(hello) ----"
    puts test.contains("hello")
    puts "---- contains(1000) ----"
    puts test.contains(1000)
    puts "---- insert(5, intArr_creator_lambda.call(3)) ----"
    test.insert(5, intArr_creator_lambda.call(3))
    puts test
    puts "---- allType(String) ----"
    puts (test.allType(String)).to_s
    puts "---- allType(Integer) ----"
    puts (test.allType(Integer)).to_s

    
    puts
    
    puts "----------TESTING ARRAYLISTINTEGER-----------"
    test2 = intArr_creator_lambda.call(15)
    puts "---- Printing ArrayListInteger ----"
    puts test2
    
    puts "---- addAll ----"
    puts test2.addAll
    puts "---- multiplyAll ----"
    puts test2.multiplyAll
    puts "---- addToAll(100) ----"
    test2.addToAll(100)
    puts test2
    
    puts "---- divisibles(3) ----"
    puts (test2.divisibles(3)).to_s
    puts "---- divisibles(2) ----"
    puts (test2.divisibles(2)).to_s
    puts "---- divisibles(5) ----"
    puts (test2.divisibles(5)).to_s
    
    puts "---- addList(intArr_creator_lambda.call(3)) ----"
    test2.addList(intArr_creator_lambda.call(3))
    puts test2
    
    puts "---- delete(get(4)) ----"
    test2.delete(test2.get(4))
    puts test2
    
end