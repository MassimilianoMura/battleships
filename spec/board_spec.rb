require 'board'

describe Board do

  let(:ship) {double :ship, position: 'B2' }
  before(:each) do
    subject.add_ship(ship)
  end


  it 'can have a ship' do
    expect(subject.board).to include(ship)
  end

  describe 'shoot_at' do

    it 'can receive a hit on a ship' do
      subject.shoot_at 'B2'
      expect(subject.board).not_to include(ship)
    end

    it 'reports message when no ship at position' do
      expect(subject.shoot_at 'C3').to eq 'Missed!'
    end

  end

  describe 'report' do

    it 'reports if all ships are sunk' do
      subject.shoot_at 'B2'
      expect(subject.report).to eq 'All ships are sunk'
    end

    it 'reports if not all ships are sunk' do
      expect(subject.report).to eq 'Not all ships are sunk'
    end

  end

end