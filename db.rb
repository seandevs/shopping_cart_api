require_relative './cart'

# DB represents a temporary database to store Cart objects.
class DB
  attr_accessor :data

  def initialize
    @data = []
    for i in 0..5
      cart = Cart.new
      data << cart
    end
  end

end
