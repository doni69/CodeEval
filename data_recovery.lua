for line in io.lines(arg[1]) do
	s,h=line:match("(.+);(.+)")
	set,hint={},{}
	s:gsub("[^%s]+",function(a) table.insert(set,a) end)
	h:gsub("%d+",function(a) table.insert(hint,a) end)
	recon={}
	for i=1,#set do
		if hint[i]~=nil then
			recon[tonumber(hint[i])]=set[i]
		else
			for j=1,#recon+1 do
				if recon[j]==nil then
					recon[j]=set[#set]
					break
				end
			end
		end
	end
	print(table.concat(recon," "))
end
