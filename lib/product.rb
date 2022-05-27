class Product

  attr_reader :product_number, :name, :cost

  def initialize(product_number, name, cost)
    @product_number = product_number
    @name = name
    @cost = cost
  end


end