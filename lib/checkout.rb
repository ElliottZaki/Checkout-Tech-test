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
      apply_discounts(total_cost)
    end
  end

  def apply_discounts(total_cost)
    if @total_cost >= 60
      @total_cost -= (@total_cost * 0.1)
    end
  end

  # def apply_discounts
  # scanned_products.each do |key, value|
  #   if @scanned_products[:name] == 'Lavender_heart' && [:quantity] >= 2
  #     @scanned_products[product.cost] = 8.50
  #   else
  #     @scanned_products[product.cost] = 9.25
  #   end
  # end


  # This is the second_promotion
  # second_promotion = Proc.new do |quantity, total_cost|
  #   if @scanned_products[product.name] == 'Lavender_heart' && [:quantity] >= 2
  #     @scanned_products[product.cost] = 8.50
  #   else
  #     @scanned_products[product.cost] = 9.25
  #   end
  # end


end


