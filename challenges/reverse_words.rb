class Reverse
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
    		settings.reverse!
    		puts settings.join(' ')
	end
	
 end	

end


reverse= Reverse.new(ARGV[0])
reverse.load_file
