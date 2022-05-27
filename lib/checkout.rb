require_relative 'product'

class Checkout

  attr_reader :scanned_products, :total_cost

  def initialize
    @scanned_products = {}
    @total_cost = 0
  end 

  def scan(product)
    #scanned_products[001] = {:name 'lavender', :cost 9.25, :quantity 1}
    if scanned_products.key?(product.product_number)
      @scanned_products[product.product_number][:quantity] += 1
    else
      @scanned_products[product.product_number] = {name: product.name, cost: product.cost, quantity: 1}
    end
  end

  def total
    scanned_products.each do |key, value|
      @total_cost += value[:quantity] * value[:cost]
      apply_discount1(total_cost)
    end
  end

  def apply_discount1(total_cost)
    if @total_cost >= 60
      @total_cost -= (@total_cost * 0.1)
    end
  end

  # This is the second_promotion
  # def apply_discount2
  #   scanned_products.each do |key, value|
  #     if value[:name] == 'Lavender_heart' && value[:quantity] >= 2
  #       value[:cost] = 8.50
  #     elsif
  #       value[:cost] = 9.50
  #     elsif
  #       @total_cost >= 60
  #       @total_cost -= (@total_cost * 0.1)
  #     else 
  #       return @total_cost 
  #   end
  # end

end


