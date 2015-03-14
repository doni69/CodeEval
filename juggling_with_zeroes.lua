for line in io.lines(arg[1]) do
	bin=""
	for zero in line:gmatch("0+ 0+") do
		if zero:sub(2,2)==" " then
			bin=bin..string.rep("0",#zero-2)
		else
			bin=bin..string.rep("1",#zero-3)
		end
	end
	print(tonumber(bin,2))
end
