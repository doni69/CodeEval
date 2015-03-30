for line in io.lines(arg[1]) do
	for i=1,#line do
		if (#line/i)%1==0 and line:sub(1,i):rep(#line/i)==line then
			print(i)
			break
		end
	end
end
