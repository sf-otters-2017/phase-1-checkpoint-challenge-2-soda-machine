# require ("soda.rb")
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = nil
    @brand = []
    @index = 0
  end

  def current_inventory_count
    #return no of sodas
    num_of_soda = @sodas.count
  end

  def find_soda(soda_brand)
    #sigle soda with given brand
    @sodas.each do |soda|
       @brand << soda.brand
    end

     @sodas.each_with_index do |soda, idx|
       @index = idx
    end
    if @brand.include?(soda_brand)
      # return @sodas.soda_brand
      return @sodas[1]
    else
      return nil
    end
  end

  def sell(soda_brand)
    #given soda brand removed,price add to cash
    if @brand.include?(soda_brand)
      @sold_soda = @sodas.sold_brand.brand
      @cash = @cash + @sodas.sold_brand.price
      @sodas.delete('soda_brand')
    else
      return nil
    end 
  end

end
