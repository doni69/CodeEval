for line in io.lines(arg[1]) do
	chars={}
	for i in line:lower():gmatch("%a") do	
		if chars[i]~=nil then
			chars[i]=chars[i]+1
		else
			chars[i]=1
		end
	end
	
	nums={}
	for i,j in pairs(chars) do
		table.insert(nums,j)
	end
	table.sort(nums, function(a,b) return a>b end)
	
	sum=0
	for i,j in ipairs(nums) do
		sum=sum+j*(27-i)
	end
	print(sum)
end
