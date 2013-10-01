def read_age()
  print "what is your age? "
  age = gets.chomp.to_i
end

def verify_drinking_age()
  age = read_age
  if age >= 21
    puts "you are a lush!"
  else
    puts "quick kids, the parents are coming!"
  end
end

verify_drinking_age
