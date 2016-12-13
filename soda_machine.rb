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
    soda_check = @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
    end

  end

  def sell(soda_brand)
    if @sodas.each do |soda|
      if soda.brand == soda_brand
        @cash += soda.price
        return soda
      end
    end
  end
end

end
