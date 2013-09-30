# Experiments with conditionals

a = false

if (2 + 2) == 5
  puts "Something is wrong with mathematics"
else
  puts "Mathematics looks reasonable"
end

if (2 + 2) == 5
  puts "Uh oh"
elsif (2 + 2) != 5
  puts "Okay"
else
  puts "This will never appear"
end

b = 3

# if (b < 5)
#   puts "Less than 5"
# elsif (b < 10)
#   puts "Less than 10 but greater than 5"
# else
#   puts "That's some big number"
# end

# if (b < 10)
#   puts "Less than 10 but greater than 5"
# elsif (b < 5)
#   puts "Less than 5"
# else
#   puts "That's some big number"
# end

c = 37
if (c < 50) && (c > 30)
  puts "between 30 and 50"
else
  puts "some other number"
end

name = "Jorge"
unless name == "Juan"
  puts "You are not Juan"
else
  puts "You are Juan. Hey buddy"
end


grade = 'B'

case grade
  when 'A'
    puts 'Aced it'
  when 'B'
    puts 'Almost'
  when 'C'
    puts 'Reevaluate your life choices'
  else
    puts "I don't know that grade"
end

if grade == 'A'
  puts 'Aced it'
elsif grade == 'B'
  puts 'Almost'
elsif grade == 'C'
  puts 'Reevalate etc'
else
  puts "I don't know that grade"
end















