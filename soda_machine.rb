
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    return @sodas.count
  end

  def find_soda(soda_brand)

    if @sodas.include? Soda.new(Brand:soda_brand)
        return soda.find(Soda.new(Brand:soda_brand))
    else
        return nil
    end
  end

  def sell(soda_brand)
    if @sodas.include? Soda.new(Brand:soda_brand)
        soda.delete(Soda.new(Brand:soda_brand))
        return @sodas
    else
        return nil
    end

  end

end
