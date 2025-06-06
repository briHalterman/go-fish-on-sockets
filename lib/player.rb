class Player
  attr_accessor :name, :hand, :book_stack

  def initialize(name)
    @name = name
    @hand ||= []
    @book_stack ||= []
  end

  def accept_card(card)
    hand.push(card)
  end
end