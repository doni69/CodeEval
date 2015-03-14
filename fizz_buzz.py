import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
	x,y,n=[int(a) for a in test.split()]
	s=[]
	for a in range(1,n+1):
		if not a%x and not a%y:s+=['FB']
		elif not a%x:s+=['F']
		elif not a%y:s+=['B']
		else: s+=[str(a)]
	print(' '.join(s))
test_cases.close()
