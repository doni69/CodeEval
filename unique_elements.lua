for line in io.lines(arg[1]) do
	nums={}
	for i in line:gmatch("%d+") do
		nums[tonumber(i)]=true
	end
	sorted={}
	for i in pairs(nums) do
		table.insert(sorted,i)
	end
	table.sort(sorted)
	print(table.concat(sorted,','))
end
