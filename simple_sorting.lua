for line in io.lines(arg[1]) do
	nums={}
	for num in line:gmatch("[%S]+") do
		table.insert(nums,tonumber(num))
	end
	table.sort(nums)
	for k,v in pairs(nums) do
		nums[k]=string.format("%.3f",v)
	end
	print(table.concat(nums,' '))
end
