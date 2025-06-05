require_relative 'card.rb'

class Deck
  attr_accessor :cards

  def initialize
    @cards ||= []

    52.times do
      cards.push(Card.new('A', 'H'))
    end
  end
end