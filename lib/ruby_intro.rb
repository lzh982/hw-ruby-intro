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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
