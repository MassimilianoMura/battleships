require 'ship'

describe Ship do

  let(:ship) {Ship.new 'A1' , 2 , 1 }

  it 'has a position when created' do
    expect(ship.position).to eq 'A1'
  end

  it 'has a size' do
    expect(ship.size).to eq 2
  end

  it 'can record number of hits' do
    expect(ship.hits).to eq 1
  end

describe 'sunk?' do
  it 'checks if the ship is sunk' do
    expect(ship.sunk?).to be false
  end
end



end