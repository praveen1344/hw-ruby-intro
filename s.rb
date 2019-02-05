class BookInStock
   def initialize(isbn,price)
   	  raise ArgumentError.new("ISBN cannot be null") if isbn == nil || isbn == ''
   	  raise ArgumentError.new("Price value is invalid") if price <= 0
   	  @isbn = isbn
   	  @price = price
   end
	# accessor methods
   def getISBN
      @isbn
   end
   def getPrice
      @price
   end

   # setter methods
   def setWidth=(isbn)
      @isbn = isbn
   end
   def setPrice=(price)
      @price = price
   end

   def price_as_string
   	  formatted_price = @price
   	  puts "$#{('%.2f' % @price)}"
   end
end

Book = BookInStock.new('isbn1', 10);
Book.price_as_string