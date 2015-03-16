for line in io.lines(arg[1]) do
	line=line:gsub("([^%s])([^%s]*)",function(a,b) return a:upper()..b end)
	print(line)
end
