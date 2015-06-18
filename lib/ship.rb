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


  def add_position_north
    num = get_number_coordinates.to_i + 1
      @size.times do
        num -= 1
        new_num = num.to_s
        let = get_letter_coordinates
        @all_positions <<  let + new_num
      end
  end

  def add_position_south
    num = get_number_coordinates.to_i - 1
    @size.times do
      num += 1
      new_num = num.to_s
      let = get_letter_coordinates
      @all_positions <<  let + new_num
    end
  end

  def add_position_west
   let = get_letter_coordinates.ord + 1
    @size.times do
      let -= 1
      new_let = let.chr
      num = get_number_coordinates
      @all_positions <<  new_let + num
    end
  end

  def add_position_east
    let = get_letter_coordinates.ord - 1
    @size.times do
      let += 1
      new_let = let.chr
      num = get_number_coordinates
      @all_positions <<  new_let + num
    end
  end

  def add_position
    if self.direction == 'N'
      add_position_north
    elsif self.direction == 'S'
      add_position_south
    elsif self.direction == 'W'
      add_position_west
    else
      add_position_east
    end
  end

  def get_letter_coordinates
    position[0]

  end

  def get_number_coordinates
    position[1]
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
