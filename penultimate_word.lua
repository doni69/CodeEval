for line in io.lines(arg[1]) do
	t={}
	line:gsub("%S+",function(a) table.insert(t,a) end)
	print(t[#t-1])
end
