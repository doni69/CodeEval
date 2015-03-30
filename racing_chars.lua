track={}
for line in io.lines(arg[1]) do
	table.insert(track,line)
end
dir={[-1]="\\",[0]="|",[1]="/"}
for i=1,#track do
	ploc=loc
	loc=track[i]:find("C") or track[i]:find("_")
	track[i]=track[i]:gsub(track[i]:sub(loc,loc),ploc and dir[ploc-loc] or "|")
	print(track[i])
end
