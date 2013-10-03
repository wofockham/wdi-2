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

  # vice getter
  def vice
    @vice
  end

  # vice setter
  def vice=(v)
    @vice = v
  end

  # instrument getter
  def instrument
    @instrument
  end

  # instrument setter
  def instrument=(i)
    @instrument = i
  end

  # year of birth getter
  def year_of_birth
    @year_of_birth
  end

  # year of birth getter
  def year_of_birth=(yob)
    @year_of_birth = yob
  end

  def age
    2013 - @year_of_birth.to_i
  end
end

groucho = MarxBrother.new
harpo = MarxBrother.new

groucho.vice = 'cigars'
groucho.instrument = 'guitar'
groucho.year_of_birth = 1890

binding.pry

