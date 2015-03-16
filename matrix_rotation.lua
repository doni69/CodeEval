for line in io.lines(arg[1]) do
	n=0
	elements={}
	line:gsub("%a+",function(a,b) table.insert(elements,a);n=n+1 end)
	n=n^0.5

	res={}
	for i=n*(n-1)+1,#elements do
		for j=i,1,-n do
			table.insert(res,elements[j])
		end
	end
	print(table.concat(res,' '))
end
