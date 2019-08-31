;ICS 312 Homework 5 - Part 1, Christian Cheshire
;03/03/19

%include "asm_io.inc"

segment	.data
	c0	db	".", 0		;the char to be printed for rgb 0 to 84
	c1	db	"`", 0		;the char to be printed for rgb 85 to 169
	c2	db	",", 0		;the char to be printed for rgb 170 to 254
	c3	db	":", 0		;the char to be printed for rgb 255 to 339
	c4	db	"i", 0		;the char to be printed for rgb 340 to 424
	c5	db	"l", 0		;the char to be printed for rgb 425 to 508
	c6	db	"w", 0		;the char to be printed for rgb 509 to 594
	c7	db	"X", 0		;the char to be printed for rgb 595 to 679
	c8	db	"W", 0		;the char to be printed for rgb 680 to 765

segment	.bss
	rgb	resd	1		;rgb value
	high	resd	1		;track height of image
	wide	resd	1		;track width of image

segment	.text
	global	asm_main

asm_main:
	enter	0,0
	pusha

begin:
	mov 	edx, 0			;track for new lines
	mov 	ecx, 0			;track for width

	call 	read_int 		;read width of the image
	mov 	[wide], eax 		;store width in memory

	call 	read_int 		;read height of the image
	mov	[high], eax		;store height in memory

checkrgb:				;jump here after printing each char
	cmp	edx, [high]		;check if edx equal to height
	je 	endprogram		;if edx is equal to height jump to endprogram

	cmp	ecx, [wide]		;check if ecx equal to width
	je	makenewline		;if ecx=width makenewline

	mov 	dword [rgb], 0 		;set rgb to 0

	call 	read_int 		;read 1st rgb value
	mov 	[rgb], eax 		;store into rgb

	call 	read_int 		;read 2nd rgb value
	add 	[rgb], eax 		;add to rgb

	call 	read_int 		;read 3rd rgb value
	add 	[rgb], eax 		;add to rgb

	cmp 	dword [rgb], 84 	;compare rgb to 84
	jle 	period 			;if rgb <= 84 jump to period

	cmp 	dword [rgb], 169 	;compare rgb to 169
	jle 	backtick 		;if rgb <= 169 jump to backtick

	cmp 	dword [rgb], 254 	;compare rgb to 254
	jle 	comma 			;if rgb <= 254 jump to comma

	cmp 	dword [rgb], 339 	;compare rgb to 339
	jle 	colon 			;if rgb <= 339 jump to colon

	cmp 	dword [rgb], 424 	;compare rgb to 424
	jle 	i 			;if rgb <= 424 jump to i

	cmp 	dword [rgb], 509 	;compare rgb to 509
	jle 	l 			;if rgb <= 509 jump to l

	cmp 	dword [rgb], 594 	;compare rgb to 594
	jle 	w 			;if rgb <= 594 jump to w

	cmp 	dword [rgb], 679 	;compare rgb to 679
	jle 	X 			;if rgb <= 679 jump to X

	cmp 	dword [rgb], 765 	;compare rgb to 765
	jle 	W 			;if rgb <= 765 jump to W

	jmp	endprogram

period:					;rgb between 0 and 84
	mov 	eax, c0			;eax points to c0 = .
	call 	print_string 		;print c0 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb 		;jump back and checkrgb again

backtick:				;rgb between 85 and 169
	mov 	eax, c1	 		;eax points to c1 = `
	call 	print_string 		;print c1 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb 		;jump back and checkrgb again

comma:					;rgb between 170 and 254
	mov 	eax, c2 		;eax points to c2 = ,
	call 	print_string 		;print c2 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb 		;jump back and checkrgb again

colon:					;rgb between 255 and 339
	mov 	eax, c3 		;eax points to c3 = :
	call 	print_string 		;print c3 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb 		;jump back and checkrgb again

i:					;rgb between 340 and 424
	mov 	eax, c4 		;eax points to c4 = i
	call 	print_string 		;print c4 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb		;jump back and checkrgb again

l:					;rgb between 425 and 509
	mov 	eax, c5 		;eax points to c5 = l
	call 	print_string 		;print c5 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb		;jump back and checkrgb again

w:					;rgb between 510 and 594
	mov 	eax, c6 		;eax points to c6 = w
	call 	print_string		;print c6 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb		;jump back and checkrgb again

X:					;rgb between 595 and 679
	mov 	eax, c7 		;eax points to c7 = X
	call 	print_string 		;print c7 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb		;jump back and checkrgb again

W:					;rgb between 680 and 765
	mov 	eax, c8			;eax points to c8 = W
	call 	print_string 		;print c8 twice
	call 	print_string
	inc	ecx
	jmp 	checkrgb		;jump back and checkrgb again

makenewline:				;go here if reaches maximum width
	inc	edx			;increment newline count
	call	print_nl			
	mov	ecx, 0			;reset to count again
	jmp	checkrgb

endprogram:				;end program
	popa
	mov	eax, 0
	leave
	ret