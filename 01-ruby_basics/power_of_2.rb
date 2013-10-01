puts "what is 2 to the 16th power?"
answer = gets.chomp.to_i

target = 2 ** 16

while answer != target

  if answer > target
    puts "Lower"
  else
    puts "Higher"
  end

  answer = gets.chomp.to_i
end

puts "You got it"
