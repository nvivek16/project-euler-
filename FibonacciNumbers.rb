initarray = [0,1,2]
x = 2
begin
   x = (initarray[-1] + initarray[-2]) 
   initarray << x
end while(x<4000000)
initarray.delete_at(-1)
initarray.delete_at(0)
sum=0
initarray.each { |x| sum += (x%2 == 0)?x:0  }
print sum
