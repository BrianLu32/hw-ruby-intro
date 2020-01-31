# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  
  if arr.length == 0
    return sum
  else
    arr.each do |n|
      sum += n
    end
    return sum
  end
end

def max_2_sum arr
  max1 = 0
  max2 = 0
  if arr.length == 0
    return max1
  elsif arr.length == 1
    max1 = arr[0];
    return max1
  else
    arr.sort
    
    max1 = arr[arr.length - 1]
    max2 = arr[arr.length - 2]
    if arr[0] + arr[1] > max1 + max2
      return arr[0] + arr[1]
    end
    return max1 + max2
  end
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  end
  
  for i in arr do
    for y in arr do
      if i != y && i + y == n
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  elsif /^([^AEIOU\W])/i.match(s) == nil
    return false
  end
  
  return true
end

def binary_multiple_of_4? s
  return false if s.length == 0
  
  if /[2-9\D]/.match(s) != nil
    return false
  end
  
  num = s.to_i(2)
  puts num
  if num % 4 == 0
    return true
  end
  return false
  
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0
      raise ArgumentError
    else
      @isbn = isbn
    end
    
    if price > 0
      @price = price
    else
      raise ArgumentError
    end
  end
  
  def isbn()
    @isbn
  end
  def isbn=(newISBN)
    @isbn = newISBN
  end
  
  def price()
    @price
  end
  def price=(newPrice)
    if newPrice > 0
      @price = newPrice
    else
      raise ArgumentError
    end
  end
  
  def price_as_string()
    newPrice = '%.2f' % @price
    return "$" + newPrice
  end
end
