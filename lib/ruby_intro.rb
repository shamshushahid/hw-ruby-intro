# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  if (arr.length == 0)
    sum=0
  else
    sum=arr.reduce(:+)
  end
  return sum
end

def max_2_sum arr
  sum_2=0
  if (arr.length == 0)
    return sum_2
  elsif (arr.length==1)
    return arr[0]
  end
  arr.sort!.reverse!
  sum_2 = arr[0] + arr[1]
  return sum_2
end

def sum_to_n? arr, n
  
  return false if arr.length == 0
  arr.each_with_index{|val,index|
    return true if arr.find_index(n-val) && arr.find_index(n-val)!=index }  
  return false
end

# Part 2

def hello(name)
 "Hello, #{name}"
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  if s =~/^[0-1]+$/
    return s.to_i(2)%4 == 0
  end 
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal Argument!!" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end
	
	def price_as_string
    format("$%.2f", @price)
  end
  
end
