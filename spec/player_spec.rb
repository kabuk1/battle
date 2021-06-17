require 'player'

describe 'Player' do
  subject(:beavis) { Player.new('Beavis') }
  describe '#name' do
    it 'returns the name' do
      expect(beavis.name).to eq "Beavis"
    end
  end
end