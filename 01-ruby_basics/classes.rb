require 'pry'

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
  2013 - brother[:year_of_birth]
end

binding.pry

age(groucho)
