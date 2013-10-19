require 'pry'


begin
  print 'What number do you want to divide by?'
  number = gets.to_i

  result = 3 / number
rescue
  puts "That division didn't work"
  #retry
ensure
  puts "This always happens"
end

puts "The result of 3 divided by #{number} is #{result}"

puts "Thank you for using this program"

begin
  raise "APOCALYPSE"
rescue
  puts "I got this"
end

#(0..10).each do |value|
#  puts "Current value is #{value}"
#  redo if value > 5
#end
