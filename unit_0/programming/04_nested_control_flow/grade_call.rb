# define method that takes three arguments
def get_grade(s1, s2, s3)

# getting the average of all three grades	
	x = (s1 + s2 + s3)/3

# control flow for grades
	if x >= 90 
  		puts "A"
	elsif  x >= 80 
  		puts "B"
	elsif  x >= 70 
  		puts "C"
	elsif  x >= 60 
  		puts "D"
	else  
  		puts "F"
	end
 end

# calling the method with three arguments
 get_grade(93,87,96)