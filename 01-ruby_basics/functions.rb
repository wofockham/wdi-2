def area(length, width)
  length * width
end

a = area(7, 9)

puts "The area is #{ a }"

b = area(100, 5)
puts "The other area is #{ b }"

my_length = 15
my_width = 28
my_area = area(my_length, my_width)
puts "My area is #{ my_area }"


def volume(length, width, height)
  length * width * height
end

v = volume(10, 10, 10)
puts "Volume is #{ v }"

def square(n)
  n * n
end

puts square(2)
puts square(10)
puts square(16)

def cube(n)
  n ** 3
end

puts cube(27)
puts cube(8)

i = 1
while i < 10
  puts "cube of #{ i } is #{ cube(i) }"
  i += 1
end

def name_tag_generator(first, last, gender, age)
  if gender == 'f'
    if age < 19
      puts "Miss #{first} #{last}"
    else
      puts "Ms #{first} #{last}"
    end
  else
    puts "Mr #{first} #{last}"
  end
end

yoohoo = name_tag_generator('John', 'Barry', 'm', 7000)
name_tag_generator('Shirley', 'Blearson', 'f', 12)
name_tag_generator('Shelly', 'Blearson', 'f', 22)
















