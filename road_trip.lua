for line in io.lines(arg[1]) do
	cities={}
	for i in line:gmatch("[0-9]+") do
		table.insert(cities,tonumber(i))
	end
	table.sort(cities)
	for i=#cities,2,-1 do
		cities[i]=cities[i]-cities[i-1]
	end
	print(table.concat(cities,','))
end
