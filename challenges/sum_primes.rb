class Prime
	attr_accessor :limit, :total
	def initialize(limit)
		@limit=limit
		@total=0
	end	

	def to_s
		puts self.sum
	end	

	def sum
		count=2
		primes=0
		while primes < self.limit  do
			if self.isPrime?(count)
				self.total += count
				primes+=1 
			end
			count+=1
		end	
		self.total
		
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

prime=Prime.new(1000)
puts prime
