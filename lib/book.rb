class Book
  attr_accessor :book_cards

  def initialize(card1, card2, card3, card4)
    @book_cards = [card1, card2, card3, card4]

    book_cards.map do |card|
      unless card.rank == book_cards[0].rank
        raise StandardError, "cards do not all have the same rank"
      end
    end
  end
end

