require_relative 'card.rb'

class Deck
  attr_accessor :cards

  FULL_DECK_SIZE = 52

  def initialize
    @cards ||= []

    FULL_DECK_SIZE.times do
      cards.push(Card.new('A', 'H'))
    end
  end
end