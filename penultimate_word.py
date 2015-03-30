import sys
with open(sys.argv[1]) as test_cases:
	for test in test_cases:
		print(test.split()[-2])
