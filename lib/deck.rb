require_relative 'card.rb'

class Deck
  attr_accessor :cards

  FULL_DECK_SIZE = 52

  def initialize
    @cards = build_deck
  end

  def build_deck
    Card::SUIT.flat_map do |suit|
      Card::RANK.map do |rank|
        Card.new(rank, suit)
      end
    end
  end

  def shuffle!
    cards.shuffle!
  end

  def ==(other_deck)
    cards == other_deck.cards
  end
end