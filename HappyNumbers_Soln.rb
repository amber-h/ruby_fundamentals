def happy_number?(n)

  numbers_tried = Array.new
 
  sum = sumOfSquares(n)

   while sum != 1 && !numbers_tried.include?(sum)
      sum = sumOfSquares(sum)
      numbers_tried.push(sum) 
      puts numbers_tried 
      puts sum

   end

  if sum == 1
    puts "Happy"
    return true
  else
    puts "unHappy"
    return false
  end
   
end

def sumOfSquares(number)

  sum = 0
  i = 0

  num_digits = number.to_s.size
  while number > 0
      digit = number % 10
      number = number / 10
      sum += digit*digit
      i+=1
  end 

  return sum

end
  

happy_number?(189)