for line in io.lines(arg[1]) do
	s,t=line:match("(.+),(.)")
	s=s:reverse()
	l=s:find(t)
	print(l and #s-l or -1)
end
