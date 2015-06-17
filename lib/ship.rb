class Ship

  attr_reader :position, :size
  attr_accessor :hits, :sunk

  def initialize position, size
    @position = position
    @size = size
    @hits = 0
    @sunk = false
  end

  def sunk?
    hits >= size ? (@sunk = true) : (@sunk = false)
  end

  def hit
    @hits += 1
  end


end