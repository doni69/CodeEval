function happy(n,arr)
	local nums=arr and arr or {}
	if n==1 then
		return 1
	elseif nums[n]~=nil then
		return 0
	end
	nums[n]=true
	s,n=tostring(n),0
	for i=1,#s do
		n=n+tonumber(s:sub(i,i))*tonumber(s:sub(i,i))
	end
	return happy(n,nums)
end

for line in io.lines(arg[1]) do
	print(happy(tonumber(line)))
end
