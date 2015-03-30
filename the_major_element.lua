for line in io.lines(arg[1]) do
	seq,ans,count={},nil,0
	line:gsub("%d+",function(a) seq[a]=seq[a] and seq[a]+1 or 1 count=count+1 end)
	for k,v in pairs(seq) do
		if v>count/2 then
			ans=k
			break
		end
	end
	print(ans and ans or "None")
end
