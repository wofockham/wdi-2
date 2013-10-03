require 'pry'

class Year
  def initialize(year)
    @year = year.to_i
  end

  def leap?
    # Leap years are divisible by 4, except years that divisible by 100 UNLESS they are also divisible by 400
    #(@year % 4 == 0) && (@year % 100 != 0 || @year % 400 == 0)

    by4 = @year % 4 == 0
    by100 = @year % 100 == 0
    by400 = @year % 400 == 0

    by4 && (!by100 || by400)
  end

  def days
    if self.leap?
      366
    else
      365
    end
  end
end

binding.pry

year2000 = Year.new 2000
if year2000.leap?
  puts "2000 is a leap year"
end

