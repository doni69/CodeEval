for line in io.lines(arg[1]) do
	line=line:match("\"items\": %[(.-)%]")
	items={}
	line:gsub("{(.-)}",function(a) table.insert(items,a) end)
	sum=0
	for k,v in pairs(items) do
		if v:find("label") then
			sum=sum+tonumber(v:match("\"id\": (%d+)"))
		end
	end
	print(sum)
end
