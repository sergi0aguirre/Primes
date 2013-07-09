class FizzBuzz
	attr_accessor :file

 def initialize(file)
 	@file=file
 end	

 def load_file
 	file = File.new(self.file, "r")
 	self.check_line(file)
	file.close
 end

 def check_line(file)
 	while (line = file.gets)
 			str_line=""
    		settings=line.split(' ')
    		(1...settings[2].to_i+1).each do |number|
    			case 
    			when (number % settings[1].to_i == 0  && number % settings[0].to_i == 0)
    				str_line+= "FB"	 
    			when number % settings[0].to_i == 0 
    				str_line+= "F"
    			when number % settings[1].to_i == 0 
    				str_line+= "B"
    			else
    				str_line+= number.to_s
    			end	
    			str_line+= " "
    		end	
    		puts str_line
	end
	
 end	

end


fizz= FizzBuzz.new(ARGV[0])
fizz.load_file