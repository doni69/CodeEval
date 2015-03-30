for line in io.lines(arg[1]) do
	min=100
	for i in line:gmatch("[^,]+") do
		min=math.min(min,#i:match("X(%.-)Y"))
	end
	print(min)
end
