# require_relative "soda_machine"

class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end

  def brand
    @brand
  end

  def price
    @price
  end

end

  pepsi=Soda.new(brand: 'Pepsi', price: 0.65)
  mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
  coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
  second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65)

p pepsi
#   agent = SecretAgentBot.new({
#   serial_no: 'SAB928347236',
#   name: 'Natasha',
#   fake_name: 'Jen Gilbert',
#   fake_occupation: 'programming teacher',
#   passcode: '28shkwh176',
#   location: 'robot warehouse'
# })
# pepsi = Soda.new(brand: 'Pepsi', price: 0.65, age: 1)
# # p pepsi
# p pepsi.brand
# p pepsi.price