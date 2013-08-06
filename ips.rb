class Comparison 	
  def self.by_ip(a, b, asc)
    a=a.split('.')
    b=b.split('.')
    order = asc ? 1 : -1 
    4.times{  |n| return ( a[n].to_i > b[n].to_i ? -1*order : 1*order )   if a[n] !=  b[n]  }	
  end

  def self.compare_ips(ips,asc)
  	puts
	puts "======"
	ips.sort!{|x,y| Comparison.by_ip(x,y, asc.downcase == 'desc') }
	puts "Sorted IPs #{asc.capitalize}"
	puts
	puts ips
  end	
end

ips=[
	"100.123.23.24",
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

puts
puts "======"
puts " Original IPs"
puts ips

Comparison.compare_ips(ips,'Asc')
Comparison.compare_ips(ips,'desc')




