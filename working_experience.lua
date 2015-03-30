months={["Jan"]=1,["Feb"]=2,["Mar"]=3,["Apr"]=4,["May"]=5,["Jun"]=6,["Jul"]=7,["Aug"]=8,["Sep"]=9,["Oct"]=10,["Nov"]=11,["Dec"]=12}
for line in io.lines(arg[1]) do
	ranges={}
	for m1,y1,m2,y2 in line:gmatch("(%w+) (%w+)%-(%w+) (%w+)") do
		table.insert(ranges,{months[m1]+(tonumber(y1)-1990)*12,months[m2]+(tonumber(y2)-1990)*12})
	end
	dates={}
	for k,v in pairs(ranges) do
		for i=v[1],v[2] do
			dates[i]=true
		end
	end
	sum=0
	for k,v in pairs(dates) do
		sum=sum+1
	end
	print(string.format("%d",(sum-sum%12)/12))
end
