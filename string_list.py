import sys,itertools
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
	rep,s=test.split(',')
	rep,s=int(rep),s.strip()
	print(','.join(sorted(set(''.join(i) for i in itertools.product(s,repeat=rep)))))

test_cases.close()
