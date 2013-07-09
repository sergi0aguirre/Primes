class Bit
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
    		settings=line.split(',')
    		str=settings[0].to_i.to_s(2)
    		puts self.check_positions(str, settings[1],settings[2])

	end
	
 end

 def check_positions(str,n1,n2)
 		str[n1]==str[n2]
 end	

end

bits= Bit.new(ARGV[0])
bits.load_file
