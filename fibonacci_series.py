import sys
test_cases = open(sys.argv[1], 'r')
dic={0:0,1:1}
def fib(num):
	global dic
	if num in dic:return dic[num]
	dic[num]=fib(num-1)+fib(num-2)
	return dic[num]

for test in test_cases:
	print(fib(int(test)))

test_cases.close()
