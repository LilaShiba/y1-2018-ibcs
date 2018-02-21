total = 0
sum = []
while true
	input = gets.chomp
	break if input.empty?
	sum << input
end
grades = sum.join(", ")

for i in grades
	i.to_i
	total += i
end

puts total
