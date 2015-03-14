import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
	print(sum([int(i) for i in test[:-1]))

test_cases.close()

