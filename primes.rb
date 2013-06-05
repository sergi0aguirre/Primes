
class Prime
        def self.isPrime?(num)
                (2..Math.sqrt(num)).each { |i|
                        if num % i == 0 && i < num
                                return false
                        end
                }
         true
        end

end



puts "enter a number"
number = gets
puts Prime.isPrime?(number.to_i) ?  "#{number} is Prime" : "#{number} is Not a Prime"
