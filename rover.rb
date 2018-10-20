require_relative "./direction"
class Rover

  # DIR = %w(N E S W).freeze
  # attr_reader :face, :x_axis, :y_axis
  # def initialize(max_x, max_y)
  #   @x_axis = 0
  #   @y_axis = 0
  #   @max_x = max_x.to_i
  #   @max_y = max_y.to_i
  # end

  attr_reader :direction, :position

  def initialize(initial_direction, current_position=[0,0])
    @direction = initial_direction
    @position = current_position
  end

  def turn_left
    @direction = @direction.turn_left
  end

  def turn_right
    @direction = @direction.turn_right
  end

  def move
    @position = @direction.move(@position)
  end

  def to_s
    "#{position[0]} #{position[1]} #{direction}"
  end
end