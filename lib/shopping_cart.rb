class ShoppingCart
  attr_reader :name, :capacity, :products, :percentage_occupied
  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @total_number_of_products = 0
    @percentage_occupied = 0
  end

  def add_product(item)
    @products << item
  end

  def total_number_of_products
    products.each do |item|
      total_number_of_products << item[4]
    end
    total_number_of_products.each { |a| sum += a}
    end
  end

  def is_full
    if @total_number_of_products == 30
      true
    else
      false
    end

  def percentage_occupied
    @percentage_occupied = (@total_number_of_products.to_i / 30) * 100
  end
end
