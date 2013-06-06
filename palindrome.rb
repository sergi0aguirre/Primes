puts "type a word"
text= gets
text.strip!
puts text==text.reverse ? 'palindrome' : 'not a palindrome' 

