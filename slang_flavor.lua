ends={", yeah!",", this is crazy, I tell ya.",", can U believe this?",", eh?",", aw yea.",", yo.","? No way!",". Awesome!"}
pos=0
for line in io.lines(arg[1]) do
	line=line:gsub("[%.!%?]",function(a) pos=pos+1 return (pos%2==0 and (ends[(pos)/2%8] or ends[8]) or a) end)
	print(line)
end
