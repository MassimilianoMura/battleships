
class Player

  attr_accessor :hits, :misses

  def initialize board
    @board = board
    @hits = []
    @misses = []
  end

  def place ship
    @board.add_ship ship
  end

end


