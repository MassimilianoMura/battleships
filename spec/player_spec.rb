require 'player'

describe Player do

  subject {Player.new(double :board, add_ship: :ship)}

  it 'can place ships' do
    expect(subject.place :ship).to eq :ship
  end

  it 'has an empty hits array when created' do
    expect(subject.hits).to be_empty
  end

  it 'has an empty misses array when created' do
    expect(subject.misses).to be_empty
  end




end