for line in io.lines(arg[1]) do
	sum=0
	for char = 1 , #line do
		sum=sum+tonumber(line:sub(char,char))
	end
	io.write(sum)
end
