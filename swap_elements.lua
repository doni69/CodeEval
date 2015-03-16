for line in io.lines(arg[1]) do
	list={}
	line,swap=line:match("(.+):(.+)")
	for i in line:gmatch("%d+") do
		table.insert(list,tonumber(i))
	end
	for i,j in swap:gmatch("(%d+)-(%d+)") do
		list[tonumber(i)+1],list[tonumber(j)+1]=list[tonumber(j)+1],list[tonumber(i)+1]
	end
	print(table.concat(list," "))
end
