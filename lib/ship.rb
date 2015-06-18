class Ship

  attr_reader :position, :size, :direction
  attr_accessor :hits, :sunk, :all_positions

  def initialize position, size, direction
    @position = position
    @all_positions = []
    @size = size
    @direction = direction
    @hits = 0
    @sunk = false
  end

  def add_position

    if self.direction == 'N'
      num = get_number_coordinates + 1
      @size.times do
        num -= 1
        new_num = num.to_s
        let = get_letter_coordinates
        @all_positions <<  let + new_num
      end
    elsif self.direction == 'S'
      num = get_number_coordinates - 1
      @size.times do
        num += 1
        new_num = num.to_s
        let = get_letter_coordinates
        @all_positions <<  let + new_num
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
