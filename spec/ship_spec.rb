require 'ship'

describe Ship do

  it 'has a position when created' do
    ship = Ship.new 'A1'
    expect(ship.position).to eq 'A1'
  end

  it 'has a size' do
    ship = Ship.new 'A1' , 2
    expect(ship.size).to eq 2
  end

  # it 'can record number of hits' do
  #   ship = Ship.new 'A1',
  #   expect(ship.hit).to eq 1
  #end

end