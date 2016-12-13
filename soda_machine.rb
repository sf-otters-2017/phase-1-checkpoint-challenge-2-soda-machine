require_relative "soda"

class SodaMachine
  attr_reader :sodas, :cash

  class Soda < SodaMachine
  end


  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
  	@soda.count
  end

  def find_soda(soda_brand)
  	if soda_brand == @soda[brand]
  		soda_brand
  	else
  		nil
  	end
  end

  def sell(soda_brand)
  	total = 0
  	@cash.each do |item|
  		item.each do |price|
  		total += item.price
  		end
  	end
  end

end

pepsi = SodaMachine.new
p pepsi

