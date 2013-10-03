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
    2013 - @year_of_birth.to_i
  end
end

groucho = MarxBrother.new
harpo = MarxBrother.new

groucho.vice = 'cigars'
groucho.instrument = 'guitar'
groucho.year_of_birth = 1890

binding.pry

