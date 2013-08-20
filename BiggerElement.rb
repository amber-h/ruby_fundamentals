def first_even(items)
	for i in 0..items.length-1
  		if items.at(i) % 2 == 0
  			puts items.at(i)
    		return items.at(i)
    		
  		end
  	end
end



first_even([3,5,7,8,2])