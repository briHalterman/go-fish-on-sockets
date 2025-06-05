class Card
  attr_reader :rank, :suit

  RANK = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

  def initialize(rank, suit)
    @rank = rank
    @suit = suit

    unless RANK.include? rank
      raise StandardError, "#{rank} is an invalid rank"
    end
  end
end