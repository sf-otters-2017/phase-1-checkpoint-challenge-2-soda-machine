require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

#mountain dew is the name of a soda instance. its also the name of the soda brand
  def find_soda(soda_brand)
    @sodas.find do |soda| 
      if soda.brand == soda_brand
        soda
      else
        nil
      end
    end
  end

#should equal the name of the instance variable of the brand thats called
#need to find the instance var name of its brand
  def sell(soda_brand)
    if find_soda(soda_brand)
      @cash += find_soda(soda_brand).price
      @sodas.delete(find_soda(soda_brand))
    else
      nil
    end
  end

end

# coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
# soda_machine = SodaMachine.new(sodas: [coke_zero], cash: 1.00)
# # soda_machine.sell('Coke Zero')
# # p soda_machine.cash
# p soda_machine.find_soda('asdfa')