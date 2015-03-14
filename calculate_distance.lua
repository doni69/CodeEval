for line in io.lines(arg[1]) do
	points={}
	for num in line:gmatch("-*[0-9]+") do
		table.insert(points,tonumber(num))
	end
	print(math.floor(((points[1]-points[3])^2+(points[2]-points[4])^2)^0.5))
end
