for line in io.lines(arg[1]) do
	n=tonumber(line)
	d=n-n%1
	n=(n-d)*60
	m=n-n%1
	n=(n-m)*60
	s=n-n%1
	print(string.format("%d.%02d'%02d\"",d,m,s))
end
