require_relative 'deck.rb'

class Game
  attr_accessor :deck

  def initialize
    @deck = Deck.new
  end
end