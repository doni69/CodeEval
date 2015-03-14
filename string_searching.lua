for line in io.lines(arg[1]) do
	strings={}
	for i in line:gmatch('[%w%*%s\\]+') do
		table.insert(strings,i)
	end
	str,sub=strings[1],strings[2]
	sub=sub:gsub('*','.*')
	sub=sub:gsub('\\%.','%%')	
	if str:find(sub) then
		print('true')
	else
		print('false')
	end	
end
