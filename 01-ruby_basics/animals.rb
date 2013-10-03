require 'pry'

class Animal
  def move
    puts "I can move!"
  end

  def speak
    puts "Some animal noise"
  end
end

class Monkey < Animal
  def speak
    puts "Ooh ooh ooh"
  end
end

class Dog < Animal
  def speak
    puts "Woof"
  end
end

binding.pry
