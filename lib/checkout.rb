require_relative 'product'

class Checkout

  attr_reader :scanned_products

  def initialize
    @scanned_products = []
  end

  def scan(product)
    @scanned_products << product
  end
end
