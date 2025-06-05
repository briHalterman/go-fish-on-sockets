require_relative 'deck.rb'
require_relative 'player.rb'

class Game
  attr_accessor :deck, :players

  def initialize
    @deck = Deck.new
    @players ||= []
  end

  def add_player(name)
    players.push(Player.new(name))
  end
end