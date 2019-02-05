# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |number|
  	sum += number
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  i = 0
	sum = 0
	if arr.size == 0
		return 0
	end
	loop do
		break if i > 1 || arr.size == 0
		i += 1;
		sum += arr.max
		arr.delete_at(arr.index(arr.max))
	end
	return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	i = 0
	bool = false
	if arr.size <= 1
		bool = false
	end
	while i < arr.size
		j = i + 1
		while j < arr.size
			if (arr[i] + arr[j]) == n
				bool = true
			end
			j += 1
		end
		i = i + 1
	end
	return bool
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  val = "Hello, "
  val += name
end

def starts_with_consonant? s
  # YOUR CODE HERE
 	if s.length == 0
		return false
	end
	char = s[0].downcase
	value = char.bytes[0]
	return false if !((value >= 67 && value <= 90) || (value >= 97 && value <= 122))
	characters = ['a','e','i','o','u']
	!characters.include? char
end

def binary_multiple_of_4? s
    # YOUR CODE HERE
  	value = s.to_i(2);
	if /[^01]/.match(s) != nil
		return false
	end
	# Check for null condition
	if s == ''
		return false
	end
	# Check for divisible by 4 condition
	if value % 4 == 0
		return true
	else
		return false
	end
end

# Part 3

class BookInStock
# YOUR CODE HERE
   attr_reader :isbn,:price
   attr_writer :isbn,:price
   
   def initialize(isbn,price)
   	  raise ArgumentError.new("ISBN cannot be null") if isbn == nil || isbn == ''
   	  raise ArgumentError.new("Price value is invalid") if price <= 0
   	  @isbn = isbn
   	  @price = price
   end
	# accessor methods
   def getisbn
      @isbn
   end
   def getPrice
      @price
   end

   # setter methods
   def setisbn=(isbn)
      @isbn = isbn
   end
   def setprice=(price)
      @price = price
   end

   def price_as_string
   	  formatted_price = "$#{('%.2f' % @price)}"
   end
end

