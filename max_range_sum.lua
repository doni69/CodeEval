for line in io.lines(arg[1]) do
	n,a=line:match("(.+);(.+)")
	n,arr=tonumber(n),{}
	a:gsub("[%-%d]+",function(a) table.insert(arr,tonumber(a)) end)
	sum,ans=0,0
	for i=1,n do
		sum=sum+arr[i]
	end
	ans=math.max(sum,0)
	for i=n+1,#arr do
		sum=sum+arr[i]-arr[i-n]
		ans=math.max(sum,ans)
	end
	print(ans)
end
