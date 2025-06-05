require_relative '../lib/game.rb'

describe 'Game' do
  describe 'initialize' do
    it 'should initialize a game with a deck' do
      
    end

    it 'should initialize a game with two players'

    it 'should initialize with a books pile for each player'
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