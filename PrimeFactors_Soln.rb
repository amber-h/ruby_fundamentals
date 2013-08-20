def prime_factors(num)
  
  isAFactor = Array.new
  isAPrime = Array.new
  isPrime = true

#First find the factors of num
	for i in 2..num
		if num % i == 0
			isAFactor.push(i)
		end
	end
#Now go through the array of factors and determine if they are prime
	
	#loops through the numbers in the array
	for i in 0.. (isAFactor.length - 1)
		current_num = isAFactor.at(i)


		for j in 2..(current_num - 1)
			if current_num % j == 0
				isPrime = false
			end
		end
		
		if isPrime == true
			isAPrime.push(current_num)
		end

		puts isPrime
		isPrime = true
	end

	
	puts isAPrime


end

prime_factors(102)