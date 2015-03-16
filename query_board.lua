ops={["SetCol"]=function(a,b) for i=a+1,65536,256 do board[i]=b end end,
["SetRow"]=function(a,b) for i=256*a+1,256*a+256 do board[i]=b end end,
["QueryCol"]=function(a,b) local sum=0 for i=a+1,65536,256 do sum=sum+(board[i] or 0) end print(sum) end,
["QueryRow"]=function(a,b) local sum=0 for i=256*a+1,256*a+256 do sum=sum+(board[i] or 0) end print(sum) end}

board={}
for line in io.lines(arg[1]) do
	line:gsub("(%a+) (%d+)(.-)$",function(a,b,c) ops[a](tonumber(b),tonumber(c))  end)
end
