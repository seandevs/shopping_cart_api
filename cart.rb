# Cart defines a shopping cart that contains items in the cart.
class Cart
  attr_reader :items

  def initialize
    @items = {soda: rand(5), milk: rand(5), hotdogs: rand(5), mustard: rand(5)}
  end

end
