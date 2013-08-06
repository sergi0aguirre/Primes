class Comparison
  def self.by_ip(a, b)
    a=a.split('.')
    b=b.split('.')

    4.times{  |n| return ( a[n].to_i > b[n].to_i ? -1 : 1 )   if a[n] !=  b[n]  }	
    
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
	"90.38.22.34",
	"90.40.22.34",	
	"10.34.45.67",
	"90.35.23.34"	
	]
puts ips


ips.sort!{|x,y| Comparison.by_ip(x,y) }
puts
puts ips





