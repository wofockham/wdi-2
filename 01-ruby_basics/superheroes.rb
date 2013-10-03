require 'pry'

class Human
  attr_reader :eyes, :bipedal, :fly, :name

  def initialize(name)
    @name = name

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

jonesy = Human.new 'Jonesy'
superman = SuperHero.new 'Clark Kent'

binding.pry
