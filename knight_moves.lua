for line in io.lines(arg[1]) do
	pos={}
	c,r=line:byte(1,2)
	if c+1<105 then
		if r-2>48 then table.insert(pos,string.char(c+1,r-2)) end
		if r+2<57 then table.insert(pos,string.char(c+1,r+2)) end
	end
	if c+2<105 then
		if r-1>48 then table.insert(pos,string.char(c+2,r-1)) end
		if r+1<57 then table.insert(pos,string.char(c+2,r+1)) end
	end
	if c-1>96 then
		if r-2>48 then table.insert(pos,string.char(c-1,r-2)) end
		if r+2<57 then table.insert(pos,string.char(c-1,r+2)) end
	end
	if c-2>96 then
		if r-1>48 then table.insert(pos,string.char(c-2,r-1)) end
		if r+1<57 then table.insert(pos,string.char(c-2,r+1)) end
	end
	table.sort(pos)
	print(table.concat(pos," "))
end
