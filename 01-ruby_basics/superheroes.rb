require 'pry'

class Human
  attr_reader :bipedal, :fly, :name
  attr_accessor :eyes

  def initialize(the_name='Generic Name')
    @name = the_name

    # Defaults
    @eyes = 2
    @bipedal = true
    @fly = false
  end
end

class SuperHero < Human
  attr_reader :secret_identity

  def initialize(name)
    @name = name.reverse.capitalize
    @secret_identity = name
    @fly = true
  end

  def shoot_lasers
    puts "Pew pew pew!"
  end
end

jonesy = Human.new 'Eggy'
superman = SuperHero.new 'Clark Kent'

matthew = Human.new

binding.pry
