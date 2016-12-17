class SodaMachine
  attr_reader :sodas, :cash
  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.size
  end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      soda=find_soda(soda_brand)
      @cash+=soda.price
      sold_soda=soda
      @sodas.delete(soda)
    end
    sold_soda
  end

end
