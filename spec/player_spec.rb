require 'player'

describe 'Player' do
  subject(:beavis) { Player.new('Beavis') }
  subject(:butthead) { Player.new('Butthead') }

  describe '#name' do
    it 'returns the name' do
      expect(beavis.name).to eq "Beavis"
    end
  end

  describe '#health_points' do
    it 'returns the total health points' do
      expect(beavis.health_points).to eq Player::DEFAULT_HEALTH_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces health points' do
      expect { butthead.takes_damage }.to change { butthead.health_points }.by(-10)
    end
  end

  describe '#attack' do
    it 'the attack damages the player' do
      expect(butthead).to receive(:takes_damage)
      beavis.attack(butthead)
    end
  end

end