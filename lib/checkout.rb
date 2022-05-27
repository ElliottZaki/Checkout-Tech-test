require_relative 'product'

class Checkout

  attr_reader :scanned_products

  def initialize
    @scanned_products = {}
  end

  def scan(product)
    #scanned_products[001] = {:name 'lavender', :cost 9.25, :quantity 1}
    if scanned_products.key?(product.product_number)
      @scanned_products[product.product_number][:quantity] += 1
    else
      @scanned_products[product.product_number] = {name: product.name, cost: product.cost, quantity: 1}
    end
  end
end
