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
    add_position
  end

   def add_position
    case self.direction
    when 'N'
      add_position_north
    when 'S'
      add_position_south
    when 'W'
      add_position_west
    when 'E'
      add_position_east
    end
  end

  def add_position_north
    num = get_number_coordinates.to_i + 1
      @size.times do
       num -= 1
       add_coordinats_north_or_south num
      end
  end

  def add_position_south
    num = get_number_coordinates.to_i - 1
    @size.times do
      num += 1
      add_coordinats_north_or_south num
    end
  end

  def add_position_west
   let = get_letter_coordinates.ord + 1
    @size.times do
      let -= 1
      add_coordinats_east_or_west let
    end
  end

  def add_position_east
    let = get_letter_coordinates.ord - 1
    @size.times do
      let += 1
      add_coordinats_east_or_west let
    end
  end

  def add_coordinats_north_or_south num
    let = get_letter_coordinates
    @all_positions <<  let + num.to_s
  end

  def add_coordinats_east_or_west let
    num = get_number_coordinates
    @all_positions <<  let.chr + num
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
