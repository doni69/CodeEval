for line in io.lines(arg[1]) do
	args={}
	for i in line:gmatch('%w+') do
		table.insert(args,i)
	end
	rep,a=tonumber(args[1]),args[2]
	pools={}
	for i=1,rep do
		t={}
		a:gsub('.',function(f) table.insert(t,f) end)
		table.insert(pools,t)
	end
	
	result={''}
	for i,pool in ipairs(pools) do
		r={}
		for j,y in ipairs(pool) do
			for k,x in ipairs(result) do
				table.insert(r,x..y)
			end
		end
		result=r
	end
	
	p,r={},{}
	for i,j in ipairs(result) do
		p[j]=true
	end

	for i,j in pairs(p) do
		table.insert(r,i)
	end
	table.sort(r)
	print(table.concat(r,','))
end
