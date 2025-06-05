require_relative '../lib/deck.rb'

describe 'Deck' do
  describe 'initialize' do
    it 'should initialize with a full deck of cards' do
      deck = Deck.new

      expect(deck.cards.count).to eq Deck::FULL_DECK_SIZE
    end

    it 'initialize with 52 unique cards' do
      deck = Deck.new

      expect(deck.cards.uniq(&:to_s).count).to eq Deck::FULL_DECK_SIZE
    end

    it 'should include every rank' do
      deck = Deck.new
      
      Card::RANK.each do |rank|
        expect(deck.cards.map(&:rank)).to include(rank)
      end
    end

    it 'should include every suit'
  end

  describe 'shuffle' do
    it 'should shuffle the deck'
  end

  describe 'deal_card' do
    it 'should add a card to a player\'s hand'

    it 'should remove the card that it gives to a player'
  end
end