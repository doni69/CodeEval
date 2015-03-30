for line in io.lines(arg[1]) do
	min,pos=10,0
	p=1
	for i in line:gmatch("%d") do
		_,c=line:gsub(i,"")
		i=tonumber(i)
		if c==1 and i<min then
			min,pos=i,p
		end
		p=p+1
	end
	print(pos)
end
