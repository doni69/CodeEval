for line in io.lines(arg[1]) do
	h1,m1,s1,h2,m2,s2=line:match("(%d+):(%d+):(%d+) (%d+):(%d+):(%d+)")
	t1,t2=h1*3600+m1*60+s1,h2*3600+m2*60+s2
	dt=math.abs(t1-t2)
	dh=string.format("%02d",(dt-dt%3600)/3600)
	dt=dt%3600
	dm=string.format("%02d",(dt-dt%60)/60)
	ds=string.format("%02d",dt%60)
	print(dh..":"..dm..":"..ds)
end
