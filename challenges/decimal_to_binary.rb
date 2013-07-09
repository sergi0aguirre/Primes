class Binary
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
    		puts str=line.to_i.to_s(2)
	end
	
 end

end

binary= Binary.new(ARGV[0])
binary.load_file
