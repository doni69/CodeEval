for line in io.lines(arg[1]) do
	t={}
	for i in line:gmatch("%d+") do
		table.insert(t,tonumber(i))
	end
	x,n,a=t[1],t[2],t[2]
	while n<x do
		n=n+a
	end
	print(n)
end
