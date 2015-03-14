for line in io.lines(arg[1]) do
	n=tonumber(line)
	sum=0
	while n>0 do
		if n%2==0 then
			n=n/2
		else
			n=n-1
			sum=sum+1
		end
	end
	print(sum)
end
