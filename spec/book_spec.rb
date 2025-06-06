require_relative '../lib/book.rb'
require_relative '../lib/card.rb'

describe 'Book' do
  let(:card1) { Card.new('A', 'C') }
  let(:card2) { Card.new('A', 'D') }
  let(:card3) { Card.new('A', 'H') }
  let(:card4) { Card.new('A', 'S') }

  let(:book) { Book.new(card1, card2, card3, card4) }

  describe '#initialize' do
    it 'should initialize with four cards' do
      expect(book.book_cards.count).to eq 4
    end
    it 'should contain cards of only one rank' do
      card4 = Card.new('K', 'S')

      expect{
        Book.new(card1, card2, card3, card4)
      }.to raise_error StandardError
    end

    it 'should contain a card of each suit' do
      Card::SUIT.each do |suit|
        expect(book.book_cards.map(&:suit)).to include(suit)
      end
    end
  end
end