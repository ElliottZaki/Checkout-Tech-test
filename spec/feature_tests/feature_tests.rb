#Feature test for £60 or over discount:
require './lib/checkout'
checkout = Checkout.new
product = Product.new(001, 'Lavender_heart', 9.25)
product2 = Product.new(002, 'Personalised cufflinks', 45.00)
product3 = Product.new(001, 'Lavender_heart', 9.25)
checkout.scan(product)
checkout.scan(product2)
checkout.scan(product3)
checkout.total
price = checkout.total_cost

#Feature test for Lavender_heart discount:
require './lib/checkout'
checkout = Checkout.new
product = Product.new(001, 'Lavender_heart', 9.25)
product2 = Product.new(002, 'Kids T-shirt', 19.95)
product3 = Product.new(001, 'Lavender_heart', 9.25)
checkout.scan(product)
checkout.scan(product2)
checkout.scan(product3)
checkout.total
price = checkout.total_cost