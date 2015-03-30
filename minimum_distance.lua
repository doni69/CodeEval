for line in io.lines(arg[1]) do
	add={}
	f,a=line:match("(%d+) (.+)")
	f=tonumber(f)
	for i in a:gmatch("%d+") do
		table.insert(add,tonumber(i))
	end
	table.sort(add)
	med=#add%2==0 and #add/2 or (#add+1)/2
	med=add[med]
	sum=0
	for k,v in pairs(add) do
		sum=sum+math.abs(med-v)
	end
	print(string.format("%d",sum))
end
