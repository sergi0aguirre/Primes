puts "As much words as you want"

words=[]
word="empty"
 
until word.empty? do

 word= gets

 word.strip!

 words<<word

end


words.sort! { |x, y| y.length <=> x.length }


puts "result"
puts words.first(3)
