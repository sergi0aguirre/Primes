class Comparison
  def self.by_ip(a, b)
    splitted_a=a.split('.')
    splitted_b=b.split('.')

    (0..3).each do |n|
    	if splitted_a[n] != splitted_b[n] 
    		return splitted_a[n].to_i > splitted_b[n].to_i ? -1 : 1
    	end	
    end	
  end
end



ips=["100.123.23.24",
	"95.34.44.10",
	"100.100.100.100",
	"90.35.23.10",	
	"80.90.34.56",
	"70.89.34.23",
	"80.91.23.12",
	"90.35.23.35",	
	"90.35.22.34",	
	"10.34.45.67",
	"90.35.23.34"	
	]
puts ips


ips.sort!{|x,y| Comparison.by_ip(x,y) }
puts
puts ips





