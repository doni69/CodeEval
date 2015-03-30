matrix,l={},0
for line in io.lines(arg[1]) do
	r={}
	if l==0 then
		l=tonumber(line)
		matrix={}
	else
		line:gsub("%d+",function(a) table.insert(r,tonumber(a)) end)
		table.insert(matrix,r)
		l=l-1
	end
	if l==0 then
		for i =#matrix-1,1,-1 do
			matrix[#matrix][i]=matrix[#matrix][i]+matrix[#matrix][i+1]
			matrix[i][#matrix]=matrix[i][#matrix]+matrix[i+1][#matrix]
		end
		for i=#matrix-1,1,-1 do
			for j=#matrix-1,1,-1 do
				matrix[i][j]=matrix[i][j]+(matrix[i+1][j]<matrix[i][j+1] and matrix[i+1][j] or matrix[i][j+1] )
			end
		end
		print(matrix[1][1])
	end
end
