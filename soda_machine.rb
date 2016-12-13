require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash, :sold_soda, :inventory_count

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = [] #store sold sodas in array
    @inventory_count = 0 #create inventory count to be modified as sodas are sold
  end

  def current_inventory_count
    @inventrory_count = @sodas.count
  end

  #Find enumerator returns first instance?
  def find_soda(soda_brand)
    @sodas.find {|soda| soda_brand == soda}
  end

  # Unfinished method
  # checks if sodas are included in the soda list
  # if so remove the soda, store the soda in a sold soda array
  # Need to access price of soda and add to soda cash and return new total
  # increment inventory down

  def sell(soda_brand)
    @sodas.include?(soda_brand)
    @sodas.delete(soda_brand)
    @sold_soda << soda_brand
    @soda.cash += @soda.price
    @soda
  end

end


#Questions:
# Confused about data types - hash vs array after input




#DRIVER CODE
pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65)

soda_machine =  SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)
# p soda_machine

# p soda_machine.current_inventory_count
p soda_machine.find_soda(pepsi)
p soda_machine.sell(mountain_dew)
p soda_machine.sell(pepsi)
