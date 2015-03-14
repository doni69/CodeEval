import sys
with open(sys.argv[1]) as test_cases:
	for test in test_cases:
		s1,s2=test.split(';')
		s1=set(int(i) for i in s1.split(','))
		s2=set(int(i) for i in s2.split(','))
		print(','.join(str(i) for i in sorted(s1&s2)) or '')
