class Card
  attr_reader :rank, :suit

  RANK = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  SUIT = ['C', 'D', 'H', 'S']

  def initialize(rank, suit)
    @rank = rank
    @suit = suit

    unless RANK.include? rank
      raise StandardError, "#{rank} is not a valid rank"
    end

    unless SUIT.include? suit
      raise StandardError, "#{suit} is not a valid suit"
    end
  end
end