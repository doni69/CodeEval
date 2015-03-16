for line in io.lines(arg[1]) do
	line=line:gsub("(%d+) (%a+)([%+%-]+)(%a+)",function(a,b,c,d) return a:sub(1,#b)..c..a:sub(#b+1) end)
	print(load("return "..line)())
end
