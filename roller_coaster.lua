for line in io.lines(arg[1]) do
	case,i={[1]=string.upper,[-1]=string.lower},-1
	line=line:gsub("%a",function(a) i=i*-1 return case[i](a) end)
	print(line)
end
