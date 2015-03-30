for line in io.lines(arg[1]) do
	if #line<=55 then
		print(line)
	else
		s=line:sub(1,40)
		if s:find("%s") then s=s:match("(.+)%s.-$") end
		print(s.."... <Read More>")
	end
end
