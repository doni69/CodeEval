for line in io.lines(arg[1]) do
	list={}
	for num in string.gmatch(line,"[0-9]+") do
		table.insert(list,tonumber(num))
	end
	table.remove(list,1)
	min=list[1]
	for key,value in ipairs(list) do
		if value<min then min=value end
	end
	offset=min-32
	str=""
	for key,value in ipairs(list) do
		str=str..string.char(value-offset)
	end
	print(str)
end
