require_relative '../lib/deck.rb'

describe 'Deck' do
  let(:deck) { Deck.new }
  describe '#initialize' do
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

  describe '#shuffle' do
    it 'should shuffle the deck' do
      stable_deck = Deck.new
      shuffle_deck = Deck.new
      expect(stable_deck).to eq shuffle_deck
      shuffle_deck.shuffle!
      expect(stable_deck).to_not eq shuffle_deck
    end
  end

  describe '#deal' do
    it 'should remove a dealt card from the deck' do
      card = deck.deal

      expect(card).to_not be_nil
      expect(deck.cards.count).to eq Deck::FULL_DECK_SIZE - 1
    end

    it 'should remove the card that it gives to a player'
  end
end