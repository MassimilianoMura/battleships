require_relative 'ship'

class Board

  attr_reader :board

  def initialize
    @board = []
  end

  def add_ship ship
    @board << ship
  end

  def shoot_at target
    if is_there_a_boat? target
      board.delete_if { |ship| ship.position == target}
    else print 'Missed!'
    end
  end

  private

  def is_there_a_boat? target
    board.any?{|ship| ship.position == target}
  end

end