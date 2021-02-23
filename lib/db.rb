# frozen_string_literal: true

require_relative './cart'

# DB represents a temporary database to store Cart objects.
class DB
  attr_accessor :data
  TOTAL = 5

  def initialize
    @data = {}
    (0..TOTAL).each do |i|
      cart = Cart.new
      data[i] = cart
    end
  end
end
