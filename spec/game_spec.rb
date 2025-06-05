require_relative '../lib/game.rb'

describe 'Game' do
  let(:game) { Game.new }

  describe 'initialize' do
    it 'should initialize a game with a deck' do
      expect(game.deck).to respond_to :cards
    end

    it 'should initialize a game with no players' do
      expect(game.players).to be_empty
    end

  end

  describe 'add_player' do
    it 'should add a new player to players' do
      game.add_player('Player1')

      expect(game.players.count).to eq 1
    end
  end

  describe 'deal_hands' do
    it 'should deal seven cards to each player' do
      game.add_player('Player1')
      game.add_player('Player2')
      game.deal_hands

      expect(game.players[0].hand.count).to eq 7
      expect(game.players[1].hand.count).to eq 7
      expect(game.deck.cards.count).to eq Deck::FULL_DECK_SIZE - 14
    end
  end

  describe 'start' do
    it 'should shuffle the deck' do
      stable_deck = Deck.new
      shuffle_deck = game.deck
      expect(shuffle_deck).to eq stable_deck
      game.start
      expect(shuffle_deck).to_not eq stable_deck
    end

    it 'should deal seven cards to each player' do
      game.add_player('Player1')
      game.add_player('Player2')
      game.start

      expect(game.players[0].hand.count).to eq 7
      expect(game.players[1].hand.count).to eq 7
      expect(game.deck.cards.count).to eq Deck::FULL_DECK_SIZE - 14
    end

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