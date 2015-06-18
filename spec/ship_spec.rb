require 'ship'

  describe Ship do

    let(:ship) {Ship.new 'A1' , 2 , :S}
    let(:board) {double :board}

    it 'has a position when created' do
      expect(ship.position).to eq 'A1'
    end

    it 'has a size' do
      expect(ship.size).to eq 2
    end

    it 'has a direction when created' do
      expect(ship.direction).to eq :S
    end

    it 'can record number of hits' do
      expect(ship.hits).to eq 0
    end

    describe 'add_position' do

      let(:ship) { Ship.new 'C4' , 2 , 'N' }
      it 'adds coordinate values based on north direction' do
        ship.add_position
        expect(ship.all_positions).to include 'C3'
      end

      let(:ship2) { Ship.new 'C4' , 2 , 'S' }
      it 'adds coordinate values based on south direction' do
        ship2.add_position
        expect(ship2.all_positions).to include 'C5'
      end

      let(:ship3) { Ship.new 'C4' , 2 , 'E' }
      it 'adds coordinate values based on south direction' do
        ship2.add_position
        expect(ship2.all_positions).to include 'D4'
      end

      let(:ship4) { Ship.new 'C4' , 2 , 'W' }
      it 'adds coordinate values based on south direction' do
        ship2.add_position
        expect(ship2.all_positions).to include 'B4'
      end

    end


    describe 'hit' do
      it 'increases the value of hits when it is hit' do
        ship.receive_hit
        expect(ship.hits).to eq 1
      end

    end

    describe 'sunk?' do
      it 'checks if the ship is sunk' do
        expect(ship.sunk?).to be false
      end
    end



end
