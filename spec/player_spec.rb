require_relative '../lib/player.rb'

describe 'Player' do
  describe 'initialize' do
    it 'should initialize with a name' do
      player = Player.new('PlayerX')

      expect(player.name).to eq 'PlayerX'
    end

    it 'should initialize with an empty hand'
  end

  describe 'request_rank' do
    it 'should request a rank from a player'
  end

  describe 'handle_book' do
    it 'should record a book'

    it 'should remove a book from hand'
  end
end