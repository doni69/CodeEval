for line in io.lines(arg[1]) do
	nums,words={},{}
	line:gsub("%a+",function(a) table.insert(words,a) end)
	line:gsub("%d+",function(a) table.insert(nums,a) end)
	print(table.concat(words,",")..((#nums==0 or #words==0) and "" or "|")..table.concat(nums,","))
end
