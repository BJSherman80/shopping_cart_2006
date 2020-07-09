
class Product
  attr_reader :category, :name, :unit_price, :quantity
  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
    @hoarded = false
  end

  def total_price
    total_price = (unit_price * quantity.to_f)
  end

  def hoard
    @quantity == true
  end

  def is_hoarded?
    @hoarded
  end
end
