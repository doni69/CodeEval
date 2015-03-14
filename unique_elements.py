import sys
with open(sys.argv[1]) as test_cases:
	for test in test_cases:
		print(','.join([str(i) for i in sorted(set(int(j) for j in test.split(',')))]))
