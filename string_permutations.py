import sys,itertools
with open(sys.argv[1]) as test_cases:
	for test in test_cases:
		print(','.join(sorted(set(''.join(i) for i in itertools.permutations(test.strip())))))
