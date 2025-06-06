require_relative '../lib/book.rb'
require_relative '../lib/card.rb'

describe 'Book' do
  it 'should initialize with four cards' do
    card1 = Card.new('A', 'C')
    card2 = Card.new('A', 'D')
    card3 = Card.new('A', 'H')
    card4 = Card.new('A', 'S')
    book = Book.new(card1, card2, card3, card4)

    expect(book.book_cards.count).to eq 4
  end
  it 'should contain cards of only one rank' do
    card1 = Card.new('A', 'C')
    card2 = Card.new('A', 'D')
    card3 = Card.new('A', 'H')
    card4 = Card.new('K', 'S')

    expect{
      Book.new(card1, card2, card3, card4)
    }.to raise_error StandardError
  end

  it 'should contain a card of each suit' do
    card1 = Card.new('A', 'C')
    card2 = Card.new('A', 'D')
    card3 = Card.new('A', 'H')
    card4 = Card.new('A', 'S')
    book = Book.new(card1, card2, card3, card4)

    Card::SUIT.each do |suit|
      expect(book.map(&:suit)).to include(suit)
    end
  end
end