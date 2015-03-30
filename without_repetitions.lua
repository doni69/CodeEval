for line in io.lines(arg[1]) do
	s=""
	for i=1,#line do
		if line:sub(i,i)~=line:sub(i+1,i+1) then
			s=s..line:sub(i,i)
		end
	end
	print(s)
end
