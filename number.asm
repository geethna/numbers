	extern printf
	extern scanf

section .data
	number: db "%d",0

section .text
	global main:

main:
	push ebp
	mov ebp,esp
	sub esp,0x10
	
	mov dword[ebp-0xc],0x0
	mov dword[ebp-0x8],0x1

	push dword[ebp-0xc]
	push number
	call printf


loop:
	push dword[ebp-0x8]
	push number
	call printf
	
	mov eax,dword[ebp-0x8]
	add dword[ebp-0x8],dword[ebp-0xc]
	
	cmp dword[ebp-0x4],5
	jne loop

	mov esp,ebp
	leave
	ret
