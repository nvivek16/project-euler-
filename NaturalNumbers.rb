def multiples(endValue, multiplevalue)
	i = 0
        while i<endValue 
		yield i
		i += multiplevalue
 	end
end
multiple3 = []
multiples(1000, 3) { |x| multiple3 << x }
multiple5 = []
multiples(1000, 5) { |x| multiple5 << x }
sum = 0
(multiple3 | multiple5).each { |x| sum+=x }
print sum
