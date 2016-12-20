class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
    #counts the # of elements in the @sodas array
  end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda_brand == soda.brand}
    #iterating over the @sodas array. going through each soda
    #until the soda_brand finds a match with soda.brand
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if find_soda(soda_brand)
      @cash += soda.price
      #add equals the price on the result of the find_soda result
      @sodas.delete(soda)
      #deletes the match from find_soda from the @sodas array
    end
  end

end
