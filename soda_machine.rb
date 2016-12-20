class SodaMachine
  attr_reader :sodas, :cash

  def initialize(info = {})
    @sodas = info[:sodas]
    @cash = info[:cash]
  end

  def current_inventory_count
     @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    sell_soda = find_soda(soda_brand)
    if sell_soda
      @cash += soda.price
      @soda.delete(sold_soda)
    end
  end

end
