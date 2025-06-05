require_relative '../lib/card.rb'

describe 'Card' do
  describe 'initialize' do
    it 'should initialize with a rank and suit' do
      card = Card.new('A', 'H')

      expect(card.rank).to eq 'A'
      expect(card.suit).to eq 'H'
    end

    it 'should be a valid rank' do
      expect{
        Card.new('X', 'H')
    }.to raise_error StandardError
    end

    it 'should be a valid suit'
  end
end