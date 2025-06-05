require_relative '../lib/game.rb'

describe 'Game' do
  describe 'initialize' do
    it 'should initialize a game with a deck' do
      game = Game.new

      expect(game.deck).to respond_to :cards
    end

    it 'should initialize a game with no players' do
      game = Game.new

      expect(game.players).to be_empty
    end

  end

  describe 'add_player' do
    it 'should add a new player to players' do
      game = Game.new
      game.add_player('Player1')

      expect(game.players.count).to eq 1
    end
  end

  describe 'start' do
    it 'should shuffle the deck'

    it 'should deal seven card to each player'

    it 'should check each player for books'

    it 'should add books to player\'s books pile'
  end

  describe 'play_turn' do
    it 'should ask a player for a card rank to request'

    it 'should check if other player has the requested card rank'

    it 'it should take the card of the requested rank from the other player'

    it 'should give cards taken from a player to the player who requested that card rank'

    it 'should check if the deck has cards'

    it 'if should take a card from the deck and give it to the player'

    it 'should check a player for books'

    it 'should check if a player is out of cards'

    it 'should declare the other player the winner if a player is out of cards'
  end

  describe 'play_round' do
    it 'play a turn for each player'
  end
end