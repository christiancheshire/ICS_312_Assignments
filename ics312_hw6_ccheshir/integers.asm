;ICS 312 Homework 6 - Part 1, Christian Cheshire
;03/18/19

%include "asm_io.inc"

segment	.data
	integer	dd	0
	hexVals	db	"0123456789ABCDEF",0
	outmsg	db	"Enter an integer: ",0

segment	.bss		

segment	.text
	global	asm_main

asm_main:
	enter	0,0
	pusha

	mov	eax, outmsg	;move message to eax
	call	print_string	;print message
	call	read_int	;read the user input
	mov	[integer], eax	;move user input to int
 	mov	ecx, 8		;set loop counter
	
loop:	
	mov	ebx, dword[integer]	;put current value of int into ebx
 	rol	ebx, 4			;rotate first byte to the end so it can be accessed separately
 	mov	dword[integer], ebx	;save current value in int
 	and	ebx, 0x000000F 		;keep the last digit in ebx and then move the corresponding hex value to al for printing
	mov	al, byte[hexVals + ebx]	
	call	print_char		;print the hexadecimal value
	loop	loop			;return to the top of the loop

	call	print_nl		;print newline
	
	popa
	mov	eax, 0
	leave
	ret