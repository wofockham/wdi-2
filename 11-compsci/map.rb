bros = %w{ groucho harpo chico zeppo }

better_bros = []
bros.each do |brother|
  better_bros.push brother.capitalize
end

better_bros = bros.map do |brother|
  brother.capitalize
end

bros.map! do |brother|
  brother.capitalize
end

nums = (1..100).to_a
cubes = nums.map { |n| n * n * n }

puts cubes.join(', ')

