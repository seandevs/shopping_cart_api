# frozen_string_literal: true

require_relative './cart'

# DB represents a temporary database to store Cart objects.
class DB
  attr_accessor :data

  def initialize
    @data = []
    (0..5).each do |_i|
      cart = Cart.new
      data << cart
    end
  end
end
