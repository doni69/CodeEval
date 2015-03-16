for line in io.lines(arg[1]) do
	line=line:gsub("%a",function(a) return (a==a:lower() and a:upper() or a:lower()) end)
	print(line)
end
