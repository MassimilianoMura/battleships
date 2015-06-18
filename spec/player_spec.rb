require 'player'

describe Player do

  subject {Player.new(double :board, add_ship: :ship)}

  it 'can place ships' do
    expect(subject.place :ship).to eq :ship
  end




end