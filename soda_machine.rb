class SodaMachine
  attr_reader :sodas, :cash

#args = {sodas: [brand, price],
#        cash: price
#         }

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

#access the soda from the array in which brand = soda_branch
#@sodas includes instance variables of each soda stored in an array
  def find_soda(soda_brand)
    @sodas.find {|soda_name| soda_name.brand == soda_brand}
  end

#remove from sodas array, and subract price from cash
  def sell(soda_brand)
    @sodas.delete_if {|soda| soda.brand == soda_brand}
  end
end
#new sodas are created. they each have a brand and a price
#the sodas are stored in an array and passed as args to the soda machine

machine = SodaMachine.new
p machine.sodas
