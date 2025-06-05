require_relative 'deck.rb'

class Game
  attr_accessor :deck, :players

  def initialize
    @deck = Deck.new
    @players ||= []
  end
end