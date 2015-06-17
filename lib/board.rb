require_relative 'ship'

class Board

  attr_reader :board

  def initialize
    @board = []
  end

  def add_ship ship
    @board << ship
  end

end