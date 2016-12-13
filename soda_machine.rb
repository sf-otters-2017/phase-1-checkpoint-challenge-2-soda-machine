class SodaMachine
  attr_reader :sodas, :cash

  def initialize(info = {})
    @sodas = info[:sodas]
    @cash = info[:cash]
  end

  def current_inventory_count
     @sodas.count
  end

  def find_soda(soda_brand)
    if @sodas == soda_brand
      return soda_brand
    else @sodas != soda_brand
      return nil
    end
  end

  def sell(soda_brand)
  # if @soda != soda_brand
  #     return nil
  #   else

  #   end
  end

end
