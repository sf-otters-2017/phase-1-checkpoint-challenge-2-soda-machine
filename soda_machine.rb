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
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      @cash += find_soda(soda_brand).price
      @sodas.delete(find_soda(soda_brand))
    end
  end

end
