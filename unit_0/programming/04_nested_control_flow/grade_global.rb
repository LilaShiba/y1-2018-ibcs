# define local variable that get a random number
# between 0 and 100
s1 = rand(0..100)
s2 = rand(0..100)
s3 = rand(0..100)

# define a constant, which stays the same through out the program
# of the average of grades
Average = (s1 + s2 + s3)/3


# method for control flow of grade
def get_grade()
		if Average >= 90 
  		puts "A"
	elsif  Average >= 80 
  		puts "B"
	elsif  Average >= 70 
  		puts "C"
	elsif  Average >= 60 
  		puts "D"
	else  
  		puts "F"
	end
end

#calling the method so we can see the grade
puts get_grade