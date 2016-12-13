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
    @sodas.find{|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    this_soda = find_soda(soda_brand)
    if this_soda != nil
      @sodas.delete_at(@sodas.index(this_soda))
      @cash += this_soda.price
    end 
    this_soda
  end

end
