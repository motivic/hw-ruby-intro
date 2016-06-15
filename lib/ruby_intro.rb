# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each { |n|
    total += n
  }
  total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  a = b = arr.min
  arr.each do |i|
    if i > a
      b = a
      a = i
    elsif i > b
      b = i
    end
  end
  return a+b
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  end
  
  0.upto(arr.length-1) do |i|
    0.upto(arr.length-1) do |j|
      if i != j and arr[i] + arr[j] == n
        return true
      end
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, "+name
end

def starts_with_consonant? s
  if s.empty? or ['a', 'e', 'i', 'o', 'u'].include? s[0].downcase
    return false
  end
  if s[0].downcase =~ /[^a-z]/
    return false
  end
  true
end

def binary_multiple_of_4? s
  if not (s =~ /^[01]+$/)
    return false
  end

  a = s.to_i(2)
  if a % 4 == 0
    return true
  end
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN is empty' unless not isbn.empty?
    @isbn = isbn
    raise ArgumentError, 'price less than or equal to 0' unless price > 0
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    '$' + '%.2f' % @price
  end
end
