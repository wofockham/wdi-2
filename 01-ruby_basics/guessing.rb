def read_guess()
  n = gets
  n = n.chomp
  n = n.to_i

  n
end

# Display a prompt for the user
puts "I am thinking of an integer between 0 and 10... what number am I thinking of? "

# Obtain the user's input and interpret it as an integer.
answer = read_guess

# Generate a random number between 0 and 10
secret = (1..10).to_a.sample

# Use a while loop to let the user guess again until he/she gets the answer right.
while answer != secret
  print "Wrong. "

  if answer < secret
    print "Guess higher: "
  else
    print "Guess lower: "
  end

  answer = read_guess
end

# Display a congratulatory response
puts "that's it!  How'd you know?!"
