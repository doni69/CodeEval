for line in io.lines(arg[1]) do
	s=""
	line:gsub("[0-9a-j]",function(a) s=s..(a:byte()<97 and a or string.char(a:byte()-49)) end)
	print(s=="" and "NONE" or s)
end
