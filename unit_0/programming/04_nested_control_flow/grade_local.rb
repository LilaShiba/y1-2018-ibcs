# method for control flow of grade
# all variables are local but inside the method
# so no need for global variables!
def get_grade()
	puts( 'what is your name')
	name = gets.chomp
	puts('What is the first grade?: ')
	s1 = gets.chomp.to_i
	puts('What is the second grade?: ')
	s2 = gets.chomp.to_i
	puts('What is the third grade?: ')
	s3 = gets.chomp.to_i
	average = (s1 + s2 + s3)/3

		if average >= 90 
  		puts " #{name}, you got an A"
	elsif  average >= 80 
  		puts "The average is a B"
	elsif  average >= 70 
  		puts "The average is a C"
	elsif  average >= 60 
  		puts "The average is a D"
	else  
  		puts "The average is a F"
	end
end

#calling the method so we can see the grade
puts get_grade