require_relative 'deck.rb'
require_relative 'player.rb'

class Game
  attr_accessor :deck, :players, :deal_size

  def initialize
    @deck = Deck.new
    @players ||= []
    @deal_size
  end

  def add_player(name)
    players.push(Player.new(name))
  end

  def determine_deal_size
    if players.count < 4
      deal_size = 7
    else
      deal_size = 5
    end
  end

  def deal_hands(deal_size)
    deal_size.times do
      players.map do |player|
        card = deck.deal
        player.accept_card(card)
      end
    end
  end

  def start(deal_size)
    deck.shuffle!
    deal_hands(deal_size)
  end
end