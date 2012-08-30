=begin
the problem is to find the largest prime factor
i got an array which has all the prime numbers that are divisible by the number
As there were oly 5 numbers i tried one by one for solution
=end

def multiples(endValue, multiplevalue)
        i = 0
        multipleset = []
        while i <= endValue
                multipleset << i
                i += multiplevalue
        end
	multipleset
end

numbers = (2..999999).to_a

i = 2
while i<=999 do
	if numbers.include?(i) 
	numbers = numbers - multiples(999,i) + [i]
	end
	i+=1
end

Factor_number = 600851475143
prime_factor = []
numbers.each { |x| if (Factor_number % x == 0) 
			prime_factor << x 
			end }
prime_factor.each { |x| puts x }
