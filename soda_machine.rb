# require ("soda.rb")
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
    return @sodas.find{|soda| soda.brand==soda_brand}
    nil
  end

  def sell(soda_brand)
    #given soda brand removed,price add to cash
    soda = find_soda(soda_brand)
    if soda!= nil
      @cash = @cash + 1 + soda.price.to_i 
        @sodas.delete(soda)
       return soda
    end
    nil
  end

  def find_cheapest_soda
    cost = 100
    cheap_soda = []
    @sodas.each do |soda|
      actual_price = soda.price.reverse.chop.reverse.to_f
      if actual_price < cost
        cost = actual_price
      end 
    end

    @sodas.each do |soda|
      actual_price = soda.price.reverse.chop.reverse.to_f
      if actual_price == cost
         cheap_soda << soda
      end
    end

    return [cheap_soda[1],cheap_soda[0]]
  end

end
