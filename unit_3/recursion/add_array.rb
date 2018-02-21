def sum(arr)
  if arr.empty?
    return 0
  else
    number = arr.pop
  	return number + sum(arr)
  	end
end

sum([2,3,4]) # returns 6