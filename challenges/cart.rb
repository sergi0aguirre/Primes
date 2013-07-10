#### White Belt ####
## Inventory ##
# iPod = Product.new('iPod', 599.00)
# iMac = Product.new('iMac', 1299.00)
# iPhone = Product.new('iPhone', 899.00)

#### Yellow Belt ####
## Add items to cart ##
# cart = Cart.new()
# cart.add(iMac)
# cart.add(iPhone)
# cart.add(iPod, 2)

#### Green Belt ####
## Shopping details ##
# cart.items.each do |item|
#   puts "#{item.name} - item.quantity - #{item.price} US$"
# end

#### Brown Belt ####
## Calculate the total of items in the cart ##
# puts "The products in the cart are worth: #{cart.price}"

#### Black Belt ####
## Discounts: iPods 2 x 1, iMac => (iPhone - 20%) ##
# puts "Your buy has a discount of: #{cart.discount}."
# puts "Total purchase amount is #{cart.total}."


class Product
	attr_accessor :name, :price, :quantity, :discount

	def initialize(name, price, quantity, discount)
		@name=name
		@price=price
		@quantity=quantity
		@discount=discount
	end

	def discount_amount
		self.price *  self.discount / 100
	end	

end

class Cart
	attr_accessor :items

  def initialize
    @items=[]
  end	
  def add(item, quantity)
   exists= self.items.index{ |it| it.product == item}
   exists.nil? ? @items<<Item.new(item,quantity) : @items[exists].quantity+=quantity
 end

 def total_discount
   self.items.inject(0) {|sum, p| sum += p.product.discount_amount * p.quantity}
 end
 


 def total
   self.items.inject(0) {|sum, p| sum += (p.product.price-p.product.discount_amount)*p.quantity }
 end	

 def subtotal
  self.items.inject(0) {|sum, p| sum += (p.product.price * p.quantity)}
end	


def mix_cart(cart)
 cart.items.each{|its| self.add(its.product,its.quantity)} 
end  

def print_cart
  puts " SUBTOTAL"
  puts "The subtotal of your shopping cart is: $ #{self.subtotal}"

  puts "DISCOUNTS"
  puts "You are qualified for the discounted amount of: $ #{self.total_discount}"

  puts "TOTAL"
  puts "The total of your purchase is: $ #{self.total}"

  puts "Thank you for Choosing Apple products!"

end 

def to_s
 self.items.each do |item|
   puts "#{item.product.name} - #{item.quantity} - #{item.product.price} US$"
 end
end  





end	

class Item
	attr_accessor :product, :quantity

	def initialize(product, quantity)
		@product=product
		@quantity=quantity
	end	
end	


iPod = Product.new('iPod', 599.00, 50,20)
iMac = Product.new('iMac', 1299.00, 10, 30)
iPhone = Product.new('iPhone', 899.00, 20,15)


cart=Cart.new()
cart.add(iPod,5)
cart.add(iPod,6)
cart.add(iMac,5)
cart.add(iPhone,5)


cart2=Cart.new()
cart2.add(iPod,1)
cart2.add(iPod,1)
cart2.add(iMac,1)

puts "Items"
puts cart

cart.print_cart

puts "======"



cart.mix_cart(cart2)

puts "Items"
puts cart
cart.print_cart




