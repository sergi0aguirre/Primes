class Absurdity
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
    	arr=line.split(',')
		puts arr.select { |x| arr.count(x) > 1 } .uniq
	end
	
 end

end

abs= Absurdity.new(ARGV[0])
abs.load_file
