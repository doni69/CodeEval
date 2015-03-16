for line in io.lines(arg[1]) do
	list,checked={},{}
	for i in line:gmatch("%w+") do
		table.insert(list,i)
	end
	c,r=tonumber(table.remove(list,1)),tonumber(table.remove(list,1))
	dir,pos=1,1
	spiral={}
	for i=1,c*r do
		table.insert(spiral,list[pos])
		checked[pos]=true
		p,d=pos,1
		repeat
			if dir==1 then
				if pos%r==0 or checked[pos+1] then
					dir,d=2,d+1
				else
					pos=pos+1
				end
			end
			if dir==2 then
				if (pos-pos%r)/r==c or checked[pos+r] then
					dir,d=3,d+1
				else
					pos=pos+r
				end
			end
			if dir==3 then
				if pos%r==1 or checked[pos-1] then
					dir,d=4,d+1
				else
					pos=pos-1
				end
			end
			if dir==4 then
				if (pos-pos%r)/r==c or checked[pos-r] then
					dir,d=1,d+1
				else
					pos=pos-r
				end
			end
		until p~=pos or d>=4
	end
	print(table.concat(spiral," "))
end
