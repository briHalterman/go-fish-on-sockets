class Book
  attr_accessor :book_cards

  def initialize(card1, card2, card3, card4)
    @book_cards = [card1, card2, card3, card4]
  end
end