class Ship

  attr_reader :position, :size
  attr_accessor :hits

  def initialize position, size
    @position = position
    @size = size
    @hits = 0
  end

  def sunk?
    hits == size ? true : false
  end


end