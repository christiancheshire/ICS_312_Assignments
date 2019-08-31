;ICS 312 Homework 6 - Part 2, Christian Cheshire
;03/28/19

%include "asm_io.inc"

segment	.data	
	val1	dd	101231
	val2	dd	41231	
		
segment	.bss		
	high	resd	1		
	wide	resd	1

	red	resb	1
	green	resb	1
	blue	resb	1
	us	resw	1

	threebytes	resd	1
	code_red	resb	1
	code_green	resb	1
	code_blue	resb	1
	result		resd	1
	
segment	.text
	global	asm_main

asm_main:
	enter	0,0
	pusha

	mov 	edi, 0		;counter for new lines
	mov 	ecx, 0		;counter for width

	call 	read_int 	;read width of the image
	mov 	[wide], eax 	;store width in memory

	call 	read_int 	;read height of the image
	mov	[high], eax	;store height in memory

	mov	eax, [wide]
	call	print_int
	call	print_nl

	mov	eax, [high]
	call	print_int
	call	print_nl

decode:				;jump here after printing each value
	cmp	edi, [high]	;check if edx equal to height
	je 	end		;if edx is equal to height jump to end

	cmp	ecx, [wide]		;check if ecx equal to width
	je	makenewline		;if ecx=width makenewline

	mov	eax, 0

	call 	read_int 		;read 1st rgb value
	shl	eax, 16
	mov 	[threebytes], eax

	call 	read_int 		;read 2nd rgb value
	shl	eax, 8 
	add	[threebytes], ax

	call 	read_int 		;read 3rd value
	add 	[threebytes], al

	mov	ebx, 0			;threebytes ^= (101231 * c * c + 41231 * r * r)
	mov     ebx, ecx		;column counter
	mov	eax, ecx		;column counter
	
	mul	ebx			;mul by c eax*ebx
	;mov	[result], eax
	mov	ebx, [val1]
	mul	ebx			;mul c*c by 41231
	mov	ebx, eax
	
	mov	eax, 0			;reset 0
	mov	eax, edi		;move r to eax
	mul	eax			;mul by r
	mul	dword [val2]		

	add	ebx, eax
	mov	eax, [threebytes]
	xor	eax, ebx

	mov	[green], al		;unsigned int threebytes = (us << 8) + green;
	shr	eax, 8

	ror	ax, 5			;us = (us << 5 ) | (us >> 11)

 	mov	[blue], al		;unsigned short us = (red << 8) + (blue)
	shr	eax, 8
	mov	[red], al

	mov	eax, 0

	mov	al, [red]
	call 	print_int
	call	print_nl

	mov	al, [green]
	call 	print_int
	call	print_nl

	mov	al, [blue]
	call 	print_int
	call	print_nl
	
	inc	ecx
	jmp 	decode

makenewline:				;jump here if reaches maximum width
	inc	edi			;increment newline count
	call	print_nl			
	mov	ecx, 0			;reset to count again
	jmp	decode

end:
	popa
	mov	eax, 0
	leave
	ret