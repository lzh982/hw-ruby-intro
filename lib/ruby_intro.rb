# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    if(arr.empty?) 
        return 0
    end
    sum =0 
    for i in 0..arr.length-1
        sum = sum + arr[i]
    end
    return sum
end

def max_2_sum arr
  # YOUR CODE HERE
    if(arr.empty?) 
        return 0
    end
    if(arr.length == 1)
      return arr[0]
    end
    arr = arr.sort
    answer = arr[arr.length-1] + arr[arr.length-2]
    return answer
    
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if(arr.empty? || arr.length == 1)
    return false
  end
  for i in 0..arr.length-1
    for j in i+1..arr.length-1
      if(arr[i]==n - arr[j])
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s.empty?)
    p false
  elsif /\A[AEIOU]/i=~ s
    p false
  elsif /\A\W/i =~s 
    p false
  else
    p true
  end
end


def binary_multiple_of_4? s
  # YOUR CODE HERE
  if( s=="0")
    return true
  end
  if(/^[10]*00$/.match(s) != nil)
    p true
  else
    p false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  #book isbn
  #book price 
  # price_as_string method  //input:20 -> output: $20.00
                          # //input:33.8-> $33.
    attr_accessor :isbn
    attr_accessor :price
    def initialize(identifier, prices )
        raise ArgumentError,
            "Illegal Input" if identifier.empty? or prices < 1
        
        @isbn = identifier
        @price = prices
    end
    
    
    def price_as_string

        money = "$" + "%2.2f" % @price.to_s
        return money
    end          

end
