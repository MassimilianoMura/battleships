require 'board'

describe Board do

  it 'can have a ship' do
    ship = double :ship
    board = []
    subject.add_ship
    expect(subject.board).to include(ship)
  end

end