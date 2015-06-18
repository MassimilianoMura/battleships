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

  def add_position
    all_position = []

    if self.direction == 'N'
      @size.times do
        num ||= get_number_coordinates
        num -= 1
        num.to_s
        let = get_letter_coordinates
        p num
        p let
    end
  end

  end

  def get_letter_coordinates
    position[0]
  end

  def get_number_coordinates
    position[1].to_i
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
