puts "As much words as you want"

words=[]
word="empty"
 
until word.empty? do

 word= gets

 word.strip!

 words<<word

end


puts words.sort { |x, y| x <=> y }


