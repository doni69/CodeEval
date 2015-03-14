def isPrime(n):
	if n<=3:return n>=2
	if not n%2 or not n%3:return False
	for i in range(5,int(n**0.5)+1,6):
		if not n%i or not n%(i+2):return False
	return True

for x in range(1000,0,-1):
	if str(x)==str(x)[::-1] and isPrime(x):
		print(x)
		break
