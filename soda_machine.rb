class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.size
  end

  def find_soda(soda_brand)
    sodas.each do |soda|
      return soda if soda.brand == soda_brand
    end
    return nil
  end

  def sell(soda_brand)
      sodas.each_with_index do |soda,idx|
       if soda.brand == soda_brand

         @cash += soda.price
          sodas.delete_at(idx)
         return soda
       end
    end
    return nil
  end

end
