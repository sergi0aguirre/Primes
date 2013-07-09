class Palindrome
	attr_accessor :limit, :numbers
	def initialize(limit)
		@limit=limit
		@numbers=[]
	end	

	def to_s
		puts self.serialize
	end	

	def serialize
		self.numbers=[]
		(0...self.limit).each do |number|
			self.numbers << number if self.palindrome?(number) and self.isPrime?(number)
		end	
		self.order
		self.numbers[0]
	end

	def order
		self.numbers.sort! {|x,y| y <=> x } 
	end	

	def palindrome?(number)
		str=number.to_s
		str.reverse==str
	end	

	def isPrime?(num)
                (2..Math.sqrt(num)).each { |i|
                        if num % i == 0 && i < num
                                return false
                        end
                }
         true
        end


end	

pal=Palindrome.new(1000)
puts pal
