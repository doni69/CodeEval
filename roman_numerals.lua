for line in io.lines(arg[1]) do
	r,ans={[1000]='M',[900]='CM',[500]='D',[400]='CD',[100]='C',[90]='XC',[50]='L',[40]='XL',[10]='X',[9]='IX',[5]='V',[4]='IV',[1]='I'},""
	n,keys=tonumber(line),{}
	for k,v in pairs(r) do
		table.insert(keys,k)
	end
	table.sort(keys,function(a,b) return a>b end)
	for k,v in pairs(keys) do
		ans=ans..string.rep(r[v],math.floor(n/v))
		n=n%v
	end
	print(ans)
end
