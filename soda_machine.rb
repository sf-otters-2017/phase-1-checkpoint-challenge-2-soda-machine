class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = ""
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    @sold_soda = find_soda(soda_brand)
    unless @sold_soda == nil
      @cash += @sold_soda.price
      @sodas.delete(@sold_soda)
    end
  end

end
