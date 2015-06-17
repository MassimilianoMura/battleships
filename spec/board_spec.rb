require 'board'

describe Board do

  let(:ship) {double :ship, position: 'B2' }
  before(:each) do
    subject.add_ship(ship)
  end


  it 'can have a ship' do
    expect(subject.board).to include(ship)
  end

  it 'can receive a hit on a ship' do
    subject.shoot_at 'B2'
    expect(subject.board).not_to include(ship)
  end

end