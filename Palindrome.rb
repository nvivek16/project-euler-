def checkpalindrome?(number)
	string1 = number.to_s
	if(string1 == string1.reverse)
		return true
	else
		return false
	end
end

palindrome=[]
for i in 100..999 do
	for j in 100..999 do
		if(checkpalindrome?(i*j))
			palindrome<<i*j
		end
	end
end

palindrome = palindrome.sort
puts palindrome[-1]

