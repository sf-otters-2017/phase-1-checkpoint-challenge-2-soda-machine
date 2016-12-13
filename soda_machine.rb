class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda_brand == soda.brand}
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
     the_soda = find_soda(soda_brand)
     price = the_soda.price
     @cash += price
     @sodas.delete(the_soda)
    end
  end

end
