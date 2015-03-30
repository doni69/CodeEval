for line in io.lines(arg[1]) do
	ans=1
	for i=0,#line-1 do
		_,count=line:gsub(tostring(i),"")
		if count~=tonumber(line:sub(i+1,i+1)) then ans=0 end
	end
	print(ans)
end
