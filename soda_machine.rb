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
    soda_check = @sodas.find{|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    select_soda = find_soda(soda_brand)
    if select_soda != nil
      @sodas.delete(select_soda)
      @cash += select_soda.price
    end
    select_soda
  end

end
