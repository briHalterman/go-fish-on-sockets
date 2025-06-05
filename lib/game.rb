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

  def deal_hands
    7.times do
      players.map do |player|
        card = deck.deal
        player.accept_card(card)
      end
    end
  end

  def start
    deck.shuffle!
    deal_hands
  end
end