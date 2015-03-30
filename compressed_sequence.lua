for line in io.lines(arg[1]) do
	seq,cur,count={},nil,nil
	for i in line:gmatch("%d+") do
		if i~=cur then
			if cur then
				table.insert(seq,count)
				table.insert(seq,cur)
			end
			cur=i
			count=1
		else
			count=count+1
		end
	end
	table.insert(seq,count)
	table.insert(seq,cur)
	print(table.concat(seq," "))
end
