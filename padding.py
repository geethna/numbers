string=raw_input()
l=len(string)
rem=l%16
bal=16-rem
for i in range(bal):
	string=string+"\\"+hex(bal)
print string

