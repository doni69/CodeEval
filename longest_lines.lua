lines={}
for line in io.lines(arg[1]) do
	table.insert(lines,line)
end
n=tonumber(table.remove(lines,1))
table.sort(lines,function(a,b) return #a>#b end)
for i=1,n do
	print(lines[i])
end
