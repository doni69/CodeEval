def isPrime(n):
	if n<=3:return n>=2
	if not n%2 or not n%3:return False
	for i in range(5,int(n**0.5)+1,6):
		if not n%i or not n%(i+2):return False
	return True

x=0
c=0
s=0
while c<1000:
	x+=1
	if isPrime(x):
		c+=1
		s+=x
print(s)
