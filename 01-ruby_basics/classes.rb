require 'pry'

=begin
groucho = {
  :vice => 'cigars',
  :instrument => 'guitar',
  :year_of_birth => '1890'
}

harpo = {
  :vice => 'women',
  :instrument => 'harp',
  :year_of_birth => '1888'
}

chico = {
  :vice => 'actresses',
  :instrument => 'piano',
  :year_of_birth => '1887'
}

def age(brother)
  2013 - brother[:year_of_birth].to_i
end
=end

class MarxBrother
  attr_accessor :vice, :instrument, :year_of_birth

  def age
    Time.new.year - @year_of_birth.to_i
  end
end

class Dog
  def year_of_birth
    @year_of_birth
  end

  def year_of_birth=(yob)
    @year_of_birth = yob
  end

  def age
    (Time.new.year - @year_of_birth) * 7
  end
end

groucho = MarxBrother.new
harpo = MarxBrother.new

groucho.vice = 'cigars'
groucho.instrument = 'guitar'
groucho.year_of_birth = 1890

fido = Dog.new
fido.year_of_birth = 1890

binding.pry

