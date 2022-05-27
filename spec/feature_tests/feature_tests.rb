require './lib/checkout'
checkout = Checkout.new
product = Product.new(001, 'Lavender_heart', 9.25)
product2 = Product.new(002, 'Personalised cufflinks', 45.00)
checkout.scan(product)
checkout.scan(product2)