import math
n=int(input())
r=int(math.sqrt(n))
l=[1 for i in range(2,n+1)]
for i in range(2,r+1):
	if(l[i]==1):
		for j in range(2*i,n,i):
			if(2*i==n):
				break
			l[j]=0
print l
