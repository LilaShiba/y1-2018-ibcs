# Data Types str, int, bool
# String interpolation 
# Input Output
# If/else

puts 'what is your name'
hello = gets.chomp
puts "Hello, #{hello}"

puts 'how old are you?'
age = gets.chomp
puts age + ' ,wow, that is old'

if age.to_i > 20
	puts 'yikes'
elsif age.to_i. > 30
	puts ' double yikes'
else
	puts 'oh'
end