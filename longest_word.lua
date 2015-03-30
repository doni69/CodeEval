for line in io.lines(arg[1]) do
	max,maxW=0,""
	line:gsub("%S+",function(a) if #a>max then max,maxW=#a,a end end)
	print(maxW)
end
