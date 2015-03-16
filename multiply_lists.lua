for line in io.lines(arg[1]) do
	t={}
	for i in line:gmatch("[^|]+") do
		table.insert(t,i)
	end
	s1,s2=t[1],t[2]
	l1,l2={},{}

	for i in s1:gmatch("%d+") do
		table.insert(l1,tonumber(i))
	end
	for i in s2:gmatch("%d+") do
		table.insert(l2,tonumber(i))
	end
	
	product={}
	for i=1,#l1 do
		table.insert(product,l1[i]*l2[i])
	end
	print(table.concat(product,' '))
end
