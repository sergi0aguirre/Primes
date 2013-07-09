class Triangle
	attr_accessor :levels, :count
	def initialize(levels)
		@levels=levels.to_i
		@count=0
	end	

	def add
		self.count+=1
	end	

	def to_s
		@levels.times do |level|
			arr=[]
            (level+1).times do |lv|
            	self.add
            	arr << self.count
            end	
            puts arr.join(" ")
		end
		
	end


end
puts "Enter the Triangle levels"
levels= gets

triangle= Triangle.new(levels)
puts ""
puts "Solution"
puts ""
puts triangle