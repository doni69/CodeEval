terminal={}
ow=true
r,c=1,1
for i=1,10 do
	table.insert(terminal,string.rep(' ',10))
end

for line in io.lines(arg[1]) do
	i=1
	while i<=#line do
		if line:sub(i,i)=='^' then
			i=i+1
			if line:sub(i,i)=='c' then
				for j=1,10 do
					terminal[j]=string.rep(' ',10)
				end
			elseif line:sub(i,i)=='h' then
				r,c=1,1
			elseif line:sub(i,i)=='b' then
				c=1
			elseif line:sub(i,i)=='d' then
				r=r<10 and r+1 or r
			elseif line:sub(i,i)=='u' then
				r=r>1 and r-1 or r
			elseif line:sub(i,i)=='l' then
				c=c>1 and c-1 or c
			elseif line:sub(i,i)=='r' then
				c=c<10 and c+1 or c
			elseif line:sub(i,i)=='e' then
				terminal[r]=terminal[r]:sub(1,c-1)
			elseif line:sub(i,i)=='i' then
				ow=false
			elseif line:sub(i,i)=='o' then
				ow=true
			elseif line:sub(i,i)=='^' then
				if ow then
					terminal[r]=terminal[r]:sub(1,c-1)..'^'..terminal[r]:sub(c+1,10)
				else
					terminal[r]=terminal[r]:sub(1,c-1)..'^'..terminal[r]:sub(c,9)
				end
				c=c<10 and c+1 or c
			elseif tonumber(line:sub(i,i))~=nil then
				r=tonumber(line:sub(i,i))+1
				i=i+1
				c=tonumber(line:sub(i,i))+1
			end
		else
			if ow then
				terminal[r]=terminal[r]:sub(1,c-1)..line:sub(i,i)..terminal[r]:sub(c+1,10)
			else
				terminal[r]=terminal[r]:sub(1,c-1)..line:sub(i,i)..terminal[r]:sub(c,9)
			end
			c=c<10 and c+1 or c
		end
		i=i+1
	end
end
print(table.concat(terminal,'\n'))
