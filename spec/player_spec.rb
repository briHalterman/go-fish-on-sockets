require_relative '../lib/player.rb'
require_relative '../lib/card.rb'

describe 'Player' do
  describe '#initialize' do
    it 'should initialize with a name' do
      player = Player.new('Player')

      expect(player.name).to eq 'Player'
    end

    it 'should initialize with an empty hand' do
      player = Player.new('Player')

      expect(player.hand).to be_empty
    end

    it 'should initialize with an empty book stack' do
      player = Player.new('Player')

      expect(player.book_stack.count).to eq 0
    end
  end

  describe '#accept_card' do
    it 'should add a card to a player\'s hand' do
      player = Player.new('Player')
      card = Card.new('A', 'H')
      player.accept_card(card)

      expect(player.hand.count).to eq 1
    end
  end

  describe '#request_rank' do
    it 'should request a rank from a player'
  end

  describe '#handle_book' do
    it 'should check a player\'s hand for a set of cards with matching ranks'

    it 'should make a book'

    it 'should add the book to a player\'s book stack'

    it 'should remove a set of cards with matching ranks from a players hand'

  end
end