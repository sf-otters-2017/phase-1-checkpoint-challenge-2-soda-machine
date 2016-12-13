class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |a|
        if a.brand == soda_brand
          return a
        end
    end
    nil
  end

  def sell(soda_brand)
    if self.find_soda(soda_brand) == nil
      return nil
    end
    sold_soda = find_soda(soda_brand)
    @cash += sold_soda.price
    return @sodas.delete(sold_soda)
  end
end
