# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.size == 0
    0
  elsif arr.size == 1
    arr[0]
  else
    max_2 = arr.max(2)
    max_2[0] + max_2[1]
  end
end

def sum_to_n? arr, n
  if arr.size <= 1
    false
  end
  dict = {}
  arr.each_with_index do |num, i|
    if dict[n - num]
      return true
    end
    dict[num] = true
  end
  return false
end

# Part 2

def hello(name)
  "Hello, %s" % [name]
end

def starts_with_consonant? s
  if s.length == 0 || s[0] !~ /[[:alpha:]]/ || ["a", "e", "i", "o", "u"].include?(s[0].downcase)
    return false
  end
  return true
end

def binary_multiple_of_4? s
  (s =~ /^(0|(1|0)*1+(1|0)*00)$/) != nil
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if price <= 0 || isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%.2f" % @price
  end
  attr_accessor :isbn, :price
end