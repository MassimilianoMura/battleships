
class Player

  def initialize board
    @board = board
  end

  def place ship
    @board.add_ship ship
  end

end


