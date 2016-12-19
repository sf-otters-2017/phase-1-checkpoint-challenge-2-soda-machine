require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = []
  end

  def current_inventory_count
    @sodas.length
  end

#mountain dew is the name of a soda instance. its also the name of the soda brand
  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

#should equal the name of the instance variable of the brand thats called
#need to find the instance var name of its brand
  def sell(soda_brand)
    @sold_soda = find_soda(soda_brand)
    unless @sold_soda == nil
      @cash += @sold_soda.price
      @sodas.delete(@sold_soda)
    end
  end

end

# coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
# soda_machine = SodaMachine.new(sodas: [coke_zero], cash: 1.00)
# # soda_machine.sell('Coke Zero')
# # p soda_machine.cash
# p soda_machine.find_soda('asdfa')