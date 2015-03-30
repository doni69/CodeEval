for line in io.lines(arg[1]) do
	str,k=line:match("(.+)|(.+)")
	key,name={},""
	k:gsub("%d+",function(a) table.insert(key,tonumber(a)) end)
	for k,v in pairs(key) do
		name=name..str:sub(v,v)
	end
	print(name)
end
