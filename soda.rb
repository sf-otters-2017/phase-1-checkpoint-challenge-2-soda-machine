class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end

# Soda.new = {
# brand: 'Pepsi', price: 0.65,
# brand: 'Mountain Dew', price: 0.75,
# brand: 'Coke Zero', price: 1.00,
# brand: 'Pepsi', price: 0.65
# }
# p soda.args
