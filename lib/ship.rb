class Ship

  attr_reader :position, :size, :direction
  attr_accessor :hits, :sunk

  def initialize position, size, direction
    @position = position
    @size = size
    @direction = direction
    @hits = 0
    @sunk = false
  end

  def sunk?
    hits >= size ? (@sunk = true) : (@sunk = false)
  end

  def receive_hit
    @hits += 1
    if self.sunk?
      'Ship sunk'
    else
      'Ship hit!'
    end
  end


end
