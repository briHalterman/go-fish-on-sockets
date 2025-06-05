require_relative '../lib/deck.rb'

describe 'Deck' do
  let(:deck) { Deck.new }
  describe 'initialize' do
    it 'should initialize with a full deck of cards' do
      expect(deck.cards.count).to eq Deck::FULL_DECK_SIZE
    end

    it 'initialize with 52 unique cards' do
      expect(deck.cards.uniq(&:to_s).count).to eq Deck::FULL_DECK_SIZE
    end

    it 'should include every rank' do
      Card::RANK.each do |rank|
        expect(deck.cards.map(&:rank)).to include(rank)
      end
    end

    it 'should include every suit' do
      Card::SUIT.each do |suit|
        expect(deck.cards.map(&:suit)).to include(suit)
      end
    end
  end

  describe 'shuffle' do
    it 'should shuffle the deck'
  end

  describe 'deal_card' do
    it 'should add a card to a player\'s hand'

    it 'should remove the card that it gives to a player'
  end
end