class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  # Soda machine will be able to return the number of sodas it contains.
  def current_inventory_count
    @sodas.count
  end

  # Soda machine will be able to find a single soda with a given brand.
  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  # Soda machine will be able to sell a soda with a given brand. 
  # When a soda is sold, it should be removed from the soda machine 
  # and the price of the soda should be added to the soda machine's cash
  def sell(soda_brand)
    if find_soda(soda_brand)
      @cash += find_soda(soda_brand).price
      @sodas.delete(find_soda(soda_brand))
    end
  end

end
