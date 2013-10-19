class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

  def initialize
    @apartments = []
  end
end
