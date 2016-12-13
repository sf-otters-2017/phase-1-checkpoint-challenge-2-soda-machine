class Soda
  attr_reader :brand, :price

  def initialize(info = {})
    @brand = info[:brand]
    @price = info[:price]
  end
end
